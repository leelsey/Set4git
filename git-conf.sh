echo '\n\nInitializing Git'
echo ' 1) Main branch setup master -> main'
git config --global init.defaultBranch main
echo ' 2) Add your information'
read -p "  • User name: " userName
read -p "  • User email: " userEmail
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "$userName"
git config --global user.email "$userEmail"
