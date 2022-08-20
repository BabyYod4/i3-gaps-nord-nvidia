#!/bin/bash

sudo pacman -Syyu
sudo pacman -S base-devel
sudo pacman -S yay

yay -S zip unzip

unzip downloads/vim/vim.zip -d downloads/vim

sudo pacman -U downloads/vim/vim.pkg.tar.zst
sudo pacman -U downloads/vim/vim-runtime.pkg.tar.zst

yay -S polybar picom-ibhagwan-git ttf-ibm-plex font-awesome-5 ttf-unifont kitty rofi imagemagic texlive-core okular mailspring qt5-styleplugins 

xset -dpms
xset s noblank
xset s off
