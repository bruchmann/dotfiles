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
