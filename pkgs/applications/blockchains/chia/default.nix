{ lib
, cacert
, fetchFromGitHub
, fetchpatch
, python3Packages
}:

let chia = python3Packages.buildPythonApplication rec {
  pname = "chia";
  version = "1.2.6";

  src = fetchFromGitHub {
    owner = "Chia-Network";
    repo = "chia-blockchain";
    rev = version;
    fetchSubmodules = true;
    sha256 = "sha256-Y+cRfx5WE+hb31E975xquuSmNgqr2AvaQnCE70sW91w=";
  };

  patches = [
    # Allow later websockets release, https://github.com/Chia-Network/chia-blockchain/pull/6304
    (fetchpatch {
      name = "later-websockets.patch";
      url = "https://github.com/Chia-Network/chia-blockchain/commit/a188f161bf15a30e8e2efc5eec824e53e2a98a5b.patch";
      sha256 = "1s5qjhd4kmi28z6ni7pc5n09czxvh8qnbwmnqsmms7cpw700g78s";
    })
  ];

  nativeBuildInputs = [
    python3Packages.setuptools-scm
  ];

  # give a hint to setuptools-scm on package version
  SETUPTOOLS_SCM_PRETEND_VERSION = "v${version}";

  propagatedBuildInputs = with python3Packages; [
    aiohttp
    aiosqlite
    bitstring
    blspy
    chiapos
    chiavdf
    chiabip158
    click
    clvm
    clvm-rs
    clvm-tools
    colorama
    colorlog
    concurrent-log-handler
    cryptography
    dnspython
    fasteners
    keyrings-cryptfile
    pyyaml
    setproctitle
    setuptools # needs pkg_resources at runtime
    sortedcontainers
    watchdog
    websockets
  ];

  checkInputs = with python3Packages; [
    pytestCheckHook
  ];

  # Testsuite is expensive and non-deterministic, so it is available in
  # passthru.tests instead.
  doCheck = false;

  disabledTests = [
    "test_spend_through_n"
    "test_spend_zero_coin"
    "test_default_cached_master_passphrase"
    "test_using_legacy_keyring"
  ];

  postPatch = ''
    # tweak version requirements to what's available in Nixpkgs
    substituteInPlace setup.py \
      --replace "aiohttp==3.7.4" "aiohttp>=3.7.4" \
      --replace "sortedcontainers==2.3.0" "sortedcontainers>=2.3.0" \
      --replace "click==7.1.2" "click>=7.1.2" \
      --replace "clvm==0.9.7" "clvm>=0.9.7" \

    ln -sf ${cacert}/etc/ssl/certs/ca-bundle.crt mozilla-ca/cacert.pem
  '';

  preCheck = ''
    export HOME=`mktemp -d`
  '';

  passthru.tests = {
    chiaWithTests = chia.overrideAttrs (_: { doCheck = true; });
  };

  meta = with lib; {
    homepage = "https://www.chia.net/";
    description = "Chia is a modern cryptocurrency built from scratch, designed to be efficient, decentralized, and secure.";
    license = with licenses; [ asl20 ];
    maintainers = teams.chia.members;
    platforms = platforms.all;
  };
};
in chia
