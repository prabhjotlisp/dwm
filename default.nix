let
  pkgs = import <nixpkgs> {};
in
{
  dwm = pkgs.stdenv.mkDerivation {
    pname = "dwm";
    version = "1.0";

    src = ./.;

    buildInputs = [ ];

    installPhase = ''
      mkdir -p $out/bin
      cp dwm $out/bin
    '';
  };
}
