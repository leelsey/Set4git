#! /usr/bin/env bash

echo ''
echo 'Installing Git'
if [ "$(uname)" == "Darwin" ]; then
    brew update && brew install git git-lfs
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [ -x "$(command -v apt-get)" ]; then
        sudo apt-get update && sudo apt-get install -y git git-lfs
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf update && sudo dnf install -y git git-lfs
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -Syu && sudo pacman -S --noconfirm git git-lfs
    elif [ -x "$(command -v zypper)" ]; then
        sudo zypper update && sudo zypper install -y git git-lfs
    fi
fi
echo '  • Installed Git with LFS'
echo 'Done!'