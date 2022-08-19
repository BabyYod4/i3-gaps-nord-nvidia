#!/bin/bash

sudo pacman -Syyu
sudo pacman -S base-devel
sudo pacman -S yay

sudo pacman -U downloads/vim/vim-9.0.0135-1-x86_64.pkg.tar.zst
sudo pacman -U downloads/vim/vim-runtime-9.0.0135-1-x86_64.pkg.tar.zst

yay -S polybar picom-ibhagwan-git ttf-ibm-plex font-awesome-5 ttf-unifont kitty rofi imagemagic texlive-core okular mailspring 

xset -dpms
xset s noblank
xset s off
