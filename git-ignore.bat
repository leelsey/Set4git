@echo off
echo.
echo.
echo %userprofile%
echo Setup git ignore files and directories
echo 1) Make gitignore_global file on your home directory
if "%userprofile%\gitignore_global" == true (
    del %userprofile%\gitignore_global
)
copy .\gitignore-sample %userprofile%\.gitignore_global
echo 2) Add your ignore files
git config --global core.excludesfile %userprofile%\.gitignore_global
