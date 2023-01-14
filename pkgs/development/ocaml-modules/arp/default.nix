{ lib, buildDunePackage, fetchurl
, cstruct, ipaddr, macaddr, logs, lwt, duration
, mirage-time, mirage-protocols, mirage-profile
, alcotest, ethernet, fmt, mirage-vnetif, mirage-random
, mirage-random-test, mirage-clock-unix, mirage-time-unix
, bisect_ppx
}:

buildDunePackage rec {
  pname = "arp";
  version = "2.3.2";

  src = fetchurl {
    url = "https://github.com/mirage/${pname}/releases/download/v${version}/${pname}-v${version}.tbz";
    sha256 = "1s09ibj9v6pp2ckn96wxmn3mjifcj97asls5xc4zg75pflk0grgz";
  };

  minimumOCamlVersion = "4.06";
  useDune2 = true;

  nativeBuildInputs = [
    bisect_ppx
  ];

  propagatedBuildInputs = [
    cstruct
    duration
    ipaddr
    logs
    lwt
    macaddr
    mirage-profile
    mirage-protocols
    mirage-time
  ];

  doCheck = true;
  checkInputs = [
    alcotest
    ethernet
    mirage-clock-unix
    mirage-profile
    mirage-random
    mirage-random-test
    mirage-time-unix
    mirage-vnetif
  ];

  meta = with lib; {
    description = "Address Resolution Protocol purely in OCaml";
    homepage = "https://github.com/mirage/arp";
    license = licenses.isc;
    maintainers = with maintainers; [ sternenseemann ];
  };
}