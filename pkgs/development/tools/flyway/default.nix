{ lib, stdenv, fetchurl, jre_headless, makeWrapper }:
stdenv.mkDerivation rec{
  pname = "flyway";
  version = "7.13.0";
  src = fetchurl {
    url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${version}/flyway-commandline-${version}.tar.gz";
    sha256 = "sha256-rZUVxswJdCFKwuXlzko+t+ZO1plRgH2VcZFJ5kkiM2s=";
  };
  nativeBuildInputs = [ makeWrapper ];
  dontBuild = true;
  dontStrip = true;
  installPhase = ''
    mkdir -p $out/bin $out/share/flyway
    cp -r sql jars drivers conf $out/share/flyway
    install -Dt $out/share/flyway/lib lib/community/*.jar lib/*.jar
    makeWrapper "${jre_headless}/bin/java" $out/bin/flyway \
      --add-flags "-Djava.security.egd=file:/dev/../dev/urandom" \
      --add-flags "-classpath '$out/share/flyway/lib/*:$out/share/flyway/drivers/*'" \
      --add-flags "org.flywaydb.commandline.Main" \
      --add-flags "-jarDirs='$out/share/flyway/jars'"
  '';
  meta = with lib; {
    description = "Evolve your Database Schema easily and reliably across all your instances";
    longDescription = ''
      The Flyway command-line tool is a standalone Flyway distribution.
      It is primarily meant for users who wish to migrate their database from the command-line
      without having to integrate Flyway into their applications nor having to install a build tool.

      This package is only the Community Edition of the Flyway command-line tool.
    '';
    homepage = "https://flywaydb.org/";
    license = licenses.asl20;
    platforms = platforms.unix;
    maintainers = [ maintainers.cmcdragonkai ];
  };
}