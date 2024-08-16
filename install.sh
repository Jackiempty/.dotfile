#!/usr/bin/env bash

rm -rf ~/.gitconfig
rm -rf ~/.config/nvim

ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/nvim ~/.config/nvim

nvim
