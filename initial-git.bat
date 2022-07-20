@echo off
echo.
echo Installing Git with Git LFS
echo.
choco install -y git git-lfs gh
echo ----^> Done!
call "git-conf.bat"
echo ----^> Done!
echo.
echo.
echo Check your git config
git config --list
