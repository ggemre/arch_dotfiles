#!/bin/sh
# installs all packages needed for system
# one time use, will never be executed again...

# configure home
cd $HOME
mkdir docs media proj scripts tmp 
ln -s .config etc

# update system and install base dev packages
sudo pacman -Syu --noconfirm
sudo pacman -S base-devel

# install compilers, interpreters, and assemblers
sudo pacman -S clang yasm python3 rustup nodejs golang default-jdk npm ruby lua --noconfirm

# install other development tools
sudo pacman -S git lldb cmake kitty --noconfirm

# install applications
sudo pacman -S neofetch htop --noconfirm

# install yay (AUR)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd $HOME
rm yay -R

# install AUR applications
yay -S brave-bin
yay -S ttf-ms-fonts

# install config files
cd tmp
git clone https://github.com/ggemre/arch_dotfiles
cp arch_dotfiles/Configs/i3 $HOME/etc/i3 -r
cp arch_dotfiles/Configs/fish $HOME/etc/fish -r
cp arch_dotfiles/Configs/kitty $HOME/etc/kitty -r
cp arch_dotfiles/Configs/polybar $HOME/etc/polybar -r
cp arch_dotfiles/Configs/rofi $HOME/etc/rofi -r
cp arch_dotfiles/Configs/nvim $HOME/etc/nvim -r
