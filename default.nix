{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/20.03.tar.gz") {}
}:

let
  jobs = rec {
    inherit pkgs;

    example = pkgs.stdenv.mkDerivation {
      pname = "example";
      version = "0.1.0";
      nativeBuildInputs = with pkgs; [
        texlive.combined.scheme-full
        pandoc
      ];
      src = pkgs.lib.sourceByRegex ./. [
        "^example\.md"
        "^beamerthemeEstonia\.sty"
      ];
      buildPhase = ''
        pandoc -st beamer example.md -o example.pdf
      '';
      installPhase = ''
        mkdir -p $out
        mv example.pdf $out/
      '';
    };
  };
in
  jobs.example
