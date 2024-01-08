#! /usr/bin/env bash

echo ''
echo 'Configuring Git'

echo ' 1) Git configuration for user and email'
read -p "  • User name: " userName
read -p "  • User email: " userEmail
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "$userName"
git config --global user.email "$userEmail"

echo ' 2) Git configuration for default'
git config --global init.defaultBranch main
echo '  • Git main branch default "main"'
git config --global color.ui auto
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
echo '  • Git Colourising enabled'
git config --global core.editor vi
echo '  • Git editor set to vi(Vim)'
git lfs install
echo '  • Git LFS installed'

echo 'Done!'