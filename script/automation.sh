#!/usr/bin/env zsh

echo ">>>>Updating OSX stuff"
sudo softwareupdate -i -a
sudo spctl --master-disable ## Disables security stuff in catalina that will drive the devs crazy

echo ">>>>>Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" </dev/null ## /dev/null skips pressing enter for the installation

echo ">>>>>Bootstrapping all the applications for the first time, overwriting all"
git clone https://github.com/Beadsley/dotfiles.git ~/.dotfiles
sh ~/.dotfiles/script/bootstrap_overwriteAll

echo ">>>>>Setting correct version of node for the course"
. ~/.dotfiles/nvm/nvm.zsh
nvm install v21.5.0
nvm alias default v21.5.0
nvm use default
