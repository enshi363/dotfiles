#!/bin/sh

git clone https://github.com/tmux-plugins/tpm .config/tmux/plugins/tpm

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip

mv ~/.config/alacritty ~/.config/alacritty.old
mv ~/.config/fish ~/.config/fish.old
mv ~/.config/kitty ~/.config/kitty.old
mv ~/.config/nvim ~/.config/nvim.old
mv ~/.config/tmux ~/.config/tmux.old
mv ~/.config/wofi ~/.config/wofi.old

CURRENTDIR=$(pwd)

echo  $CURRENTDIR/.config/alacritty 

ln -s  $CURRENTDIR/.config/alacritty ~/.config/alacritty
ln -s  $CURRENTDIR/.config/fish ~/.config/fish
ln -s  $CURRENTDIR/.config/kitty ~/.config/kitty
ln -s  $CURRENTDIR/.config/nvim ~/.config/nvim
ln -s  $CURRENTDIR/.config/tmux ~/.config/tmux
ln -s  $CURRENTDIR/.config/wofi ~/.config/wofi


