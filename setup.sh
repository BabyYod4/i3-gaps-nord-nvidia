#!/bin/bash

sudo pacman -Syyu
sudo pacman -S base-devel
sudo pacman -S yay

cd downloads/vim-py
makepkg -si --nocheck
sudo pacman -U *.pkg.tar.zst
cd ~

yay -S polybar picom-ibhagwan-git ttf-ibm-plex font-awesome-5 ttf-unifont kitty rofi imagemagic texlive-core okular mailspring qt5-styleplugins 

xset -dpms
xset s noblank
xset s off
