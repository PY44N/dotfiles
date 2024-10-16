#!/bin/bash

cp -r ~/$1 ~/dotfiles/$1
rm -r ~/$1
ln -s ~/dotfiles/$1 ~/$1

echo ln -s ~/dotfiles/$1 ~/$1 >> setup.sh

echo Added file: $1
