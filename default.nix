{ nixpkgs ? import ./nixpkgs.nix }:

let
  pkgs = import nixpkgs {};
in

pkgs.stdenv.mkDerivation {
  name = "resume";
  src = pkgs.lib.cleanSource ./.;
  buildInputs = [ pkgs.texlive.combined.scheme-medium ];
  doCheck = true;
  checkPhase = "echo ======================; chktex $src/resume.tex";
  buildPhase = "pdflatex $src/resume.tex";
  installPhase = "cp resume.pdf $out";
}
