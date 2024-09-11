{ stdenv, lib, cmake, boost, raylib }:

stdenv.mkDerivation {
  name = "rtype";

  src = lib.fileset.toSource {
    root = ./..;
    fileset = lib.fileset.unions [
      ../src
      ../CMakeLists.txt
    ];
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ boost raylib ];
}
