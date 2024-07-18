#!/bin/sh

cd "$(dirname "$0")" || exit 1

PKGS="$(grep -v '^#' ./aurpkgs.txt | xargs)"

git clone --depth 1 https://github.com/Morganamilo/paru.git
cd paru || exit 1
makepkg -si || exit 1

paru -Sy $PKGS
