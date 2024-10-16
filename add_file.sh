#!/bin/bash

cp ~/$1 ~/dotfiles/$1
rm ~/$1
ln -sf ~/dotfiles/$1 ~/$1
echo ln -sf ~/dotfiles/$1 ~/$1 >> setup.sh

echo Added file: $1
