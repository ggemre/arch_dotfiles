#!/bin/sh
# installs all packages needed for system
# one time use, will never be executed again...

sudo pacman -Syu --noconfirm

# install compilers, interpreters, and assemblers
sudo pacman -S gcc --noconfirm
sudo pacman -S g++ --noconfirm
sudo pacman -S yasm --noconfirm
sudo pacman -S python3 --noconfirm
sudo pacman -S rustup --noconfirm
sudo pacman -S mono-complete --noconfirm
sudo pacman -S nodejs --noconfirm
sudo pacman -S golang --noconfirm
sudo pacman -S default-jdk --noconfirm
sudo pacman -S npm --noconfirm


# install other development tools
sudo pacman -S git --noconfirm
sudo pacman -S gdb --noconfirm
sudo pacman -S cmake --noconfirm

# install applications
sudo pacman -S neofetch --noconfirm
