#!/bin/sh

git clone https://github.com/tmux-plugins/tpm .config/tmux/plugins/tpm

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip

mv ~/.config/alacritty ~/.config/alacritty.old
mv ~/.config/fish ~/.config/fish.old
mv ~/.config/kitty ~/.config/kitty.old
mv ~/.config/nvim ~/.config/nvim.old
mv ~/.config/tmux ~/.config/tmux.old

ln -s  .config/alacritty ~/.config/alacritty
ln -s  .config/fish ~/.config/fish
ln -s  .config/kitty ~/.config/kitty
ln -s  .config/nvim ~/.config/nvim
ln -s  .config/tmux ~/.config/tmux

