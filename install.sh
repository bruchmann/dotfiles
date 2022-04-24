#!/usr/bin/env bash
set -ex

ln --symbolic ~/dotfiles/inputrc ~/.inputrc
ln --symbolic ~/dotfiles/editorconfig ~/.editorconfig
ln --symbolic ~/dotfiles/xsession ~/.xsession

ln --symbolic ~/dotfiles/bash/bashrc ~/.bashrc

ln --symbolic ~/dotfiles/git/attributes ~/.gitattributes
ln --symbolic ~/dotfiles/git/config ~/.gitconfig
ln --symbolic ~/dotfiles/git/ignore ~/.gitignore

mkdir -p ~/.config/herbstluftwm
ln --symbolic ~/dotfiles/herbstluftwm/autostart ~/.config/herbstluftwm/autostart

mkdir -p ~/.config/neovim
ln --symbolic ~/dotfiles/neovim/init.vim ~/.config/neovim/init.vim

mkdir -p ~/.config/tmux/
ln --symbolic ~/dotfiles/tmux.conf ~/.config/tmux/tmux.conf
mkdir -p ~/.config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm/
