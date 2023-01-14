{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "bftpd";
  version = "6.0";

  src = fetchurl {
    url = "mirror://sourceforge/project/${pname}/${pname}/${pname}-${version}/${pname}-${version}.tar.gz";
    sha256 = "sha256-t+YCys67drYKcD3GXxSVzZo4HTRZArIpA6EofeyPAlw=";
  };

  preConfigure = ''
    sed -re 's/-[og] 0//g' -i Makefile*
  '';

  postInstall = ''
    mkdir -p $out/share/doc/${pname}
    mv $out/etc/*.conf $out/share/doc/${pname}
    rm -rf $out/{etc,var}
  '';

  enableParallelBuilding = true;

  meta = with lib; {
    description = "A minimal ftp server";
    downloadPage = "http://bftpd.sf.net/download.html";
    homepage = "http://bftpd.sf.net/";
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ raskin ];
    platforms = platforms.all;
  };
}
