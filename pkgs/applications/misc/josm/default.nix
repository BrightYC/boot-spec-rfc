{ lib, stdenv, fetchurl, fetchsvn, makeWrapper, unzip, jre, libXxf86vm
, extraJavaOpts ? "-Djosm.restart=true -Djava.net.useSystemProxies=true"
}:
let
  pname = "josm";
  version = "18193";
  srcs = {
    jar = fetchurl {
      url = "https://josm.openstreetmap.de/download/josm-snapshot-${version}.jar";
      sha256 = "sha256-55lrPOlQQx1rmmIzBJ522zSia7RmVNTeHuE20vE1d6A=";
    };
    macosx = fetchurl {
      url = "https://josm.openstreetmap.de/download/macosx/josm-macos-${version}-java16.zip";
      sha256 = "sha256-OoDX5tPTLrUgGfBa11dFVyeuXSai8QJNeQLWwot2ksk=";
    };
    pkg = fetchsvn {
      url = "https://josm.openstreetmap.de/svn/trunk/native/linux/tested";
      rev = version;
      sha256 = "sha256-uXXS+urNCrGnalIAj49Bp1S+pXya/XhdfEWvPmcKKII=";
    };
  };
in
stdenv.mkDerivation rec {
  inherit pname version;

  dontUnpack = true;

  nativeBuildInputs = [ makeWrapper ];
  buildInputs = lib.optionals (!stdenv.isDarwin) [ jre ];

  installPhase =
    if stdenv.isDarwin then ''
      mkdir -p $out/Applications
      ${unzip}/bin/unzip ${srcs.macosx} 'JOSM.app/*' -d $out/Applications
    '' else ''
      install -Dm644 ${srcs.jar} $out/share/josm/josm.jar
      cp -R ${srcs.pkg}/usr/share $out

      # Add libXxf86vm to path because it is needed by at least Kendzi3D plugin
      makeWrapper ${jre}/bin/java $out/bin/josm \
        --add-flags "${extraJavaOpts} -jar $out/share/josm/josm.jar" \
        --prefix LD_LIBRARY_PATH ":" '${libXxf86vm}/lib'
    '';

  meta = with lib; {
    description = "An extensible editor for OpenStreetMap";
    homepage = "https://josm.openstreetmap.de/";
    changelog = "https://josm.openstreetmap.de/wiki/Changelog";
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ rycee sikmir ];
    platforms = platforms.all;
  };
}