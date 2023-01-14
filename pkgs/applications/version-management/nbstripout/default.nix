{lib, python, git, mercurial, coreutils}:

with python.pkgs;
buildPythonApplication rec {
  version = "0.5.0";
  pname = "nbstripout";

  # Mercurial should be added as a build input but because it's a Python
  # application, it would mess up the Python environment. Thus, don't add it
  # here, instead add it to PATH when running unit tests
  checkInputs = [ pytest pytest-flake8 git ];
  nativeBuildInputs = [ pytest-runner ];
  propagatedBuildInputs = [ ipython nbformat ];

  src = fetchPypi {
    inherit pname version;
    sha256 = "86ab50136998d62c9fa92478d2eb9ddc4137e51a28568f78fa8f24a6fbb6a7d8";
  };

  # for some reason, darwin uses /bin/sh echo native instead of echo binary, so
  # force using the echo binary
  postPatch = ''
    substituteInPlace tests/test-git.t --replace "echo" "${coreutils}/bin/echo"
  '';

  # ignore flake8 tests for the nix wrapped setup.py
  checkPhase = ''
    PATH=$PATH:$out/bin:${mercurial}/bin pytest .
  '';

  meta = {
    description = "Strip output from Jupyter and IPython notebooks";
    homepage = "https://github.com/kynan/nbstripout";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ jluttine ];
  };
}
