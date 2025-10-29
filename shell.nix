{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gcc
    gnumake
    ncurses.dev
    (python3.withPackages (ps: [ ps.distutils-extra ps.setuptools ]))
    file
    pkg-config
  ];
}
