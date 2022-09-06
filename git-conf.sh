echo '\n\nInitializing Git'
echo ' 1) Default configure'
git config --global init.defaultBranch main
echo '  • Main branch default name changed master -> main'
git config --global color.ui true
echo '  • Colourising enabled'
git config --global core.editor vi
echo '  • Editor set to vi (vim)'
echo ' 2) Add your information'
read -p "  • User name: " userName
read -p "  • User email: " userEmail
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "$userName"
git config --global user.email "$userEmail"
