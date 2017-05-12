let
  inherit (import <nixpkgs> {})
    lib
    stdenv
    cargo
    clang
    rustc
    rustfmt
    gnuplot
  ;
in

stdenv.mkDerivation rec {
  name = "yinmn.rs";

  nativeBuildInputs = [
    cargo
    clang
    gnuplot
    rustc
    rustfmt
  ];

  buildInputs = [
  ];

  lib_path = lib.makeLibraryPath buildInputs;

  postFixup = ''
    for f in target/*/"$name"; do
      patchelf --set-rpath "$lib_path" "$f"
    done
  '';
}
