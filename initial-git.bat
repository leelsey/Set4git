@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo.
echo Installing Git with Git LFS
echo.
choco install -y git git-lfs gh
echo ----^> Done!
call ".\git-conf.bat"
echo ----^> Done!
call ".\git-ignore.bat"
echo ----^> Done!
echo.
echo.
echo Check your git config
type %userprofile%\.gitconfig
