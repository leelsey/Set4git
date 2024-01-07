#! /usr/bin/env bash

echo ""
echo "Setup Git Ignore"
if [ -f "$HOME/.config/git/.gitignore_global" ]; then
    rm -f "$HOME/.config/git/.gitignore_global"
fi
mkdir -p "$HOME/.config/git"
if [ "$(uname)" == "Darwin" ]; then
    cp ./gitignore-sample/macos "$HOME/.config/git/.gitignore_global"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    cp ./gitignore-sample/linux "$HOME/.config/git/.gitignore_global"
fi
chmod 644 $HOME/.config/git/gitignore_global
echo "  • Generated git ingnore file: $HOME/.config/git/.gitignore_global"
git config --global --unset core.excludesfile
git config --global core.excludesfile "$HOME/.config/git/gitignore_global"
echo "  • Updated your global git ignore"
echo "Done!"
