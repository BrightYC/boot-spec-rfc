{ lib, stdenv, fetchurl, perl, autoconf }:

stdenv.mkDerivation rec {
  # When updating, beware of https://github.com/NixOS/nixpkgs/pull/131928#issuecomment-896614165
  name = "automake-1.16.3";

  src = fetchurl {
    url = "mirror://gnu/automake/${name}.tar.xz";
    sha256 = "0fmz2fhmzcpacnprl5msphvaflwiy0hvpgmqlgfny72ddijzfazz";
  };

  nativeBuildInputs = [ autoconf perl ];
  buildInputs = [ autoconf ];

  setupHook = ./setup-hook.sh;

  # Disable indented log output from Make, otherwise "make.test" will
  # fail.
  preCheck = "unset NIX_INDENT_MAKE";
  doCheck = false; # takes _a lot_ of time, fails 3 out of 2698 tests, all seem to be related to paths
  doInstallCheck = false; # runs the same thing, fails the same tests

  # The test suite can run in parallel.
  enableParallelBuilding = true;

  # Don't fixup "#! /bin/sh" in Libtool, otherwise it will use the
  # "fixed" path in generated files!
  dontPatchShebangs = true;

  meta = {
    branch = "1.16";
    homepage = "https://www.gnu.org/software/automake/";
    description = "GNU standard-compliant makefile generator";
    license = lib.licenses.gpl2Plus;

    longDescription = ''
      GNU Automake is a tool for automatically generating
      `Makefile.in' files compliant with the GNU Coding
      Standards.  Automake requires the use of Autoconf.
    '';

    platforms = lib.platforms.all;
  };
}
