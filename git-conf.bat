@echo off
echo.
echo.
echo Initializing Git
echo.
echo 1) Main branch default name changed master to main
git config --global init.defaultBranch main
echo 2) Add your information
set /p userName= - User name: 
set /p userEmail=  - User email: 
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "%userName%"
git config --global user.email "%userEmail%" 
