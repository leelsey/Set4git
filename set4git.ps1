Write-Host "
  ___     _   _ _       _ _
 / __|___| |_| | | __ _(_| |_
 \__ / -_|  _|_  _/ _`` | |  _|
 |___\___|\__| |_|\__, |_|\__|
                  |___/
    by leelsey


Set4git options
 1. Install git
 2. Configure git
 3. Setup git global ignore
 4. Install and configure git
 5. Install, configure and setup git global ignore
 0. Exit
"
$set4gitoption = Read-Host "Choose Set5git option"
if ($set4gitoption -notmatch "^[0-5]+$") {
    Write-Host "Please input a number between 0 and 5" -ForegroundColor Red
    Write-Host "Exit" -ForegroundColor Red
    exit 1
}
if ($set4gitoption -eq "0") {
    Write-Host "Exit" -ForegroundColor Red
    exit 1
} elseif ($set4gitoption -eq "1") {
    .\git-install.ps1
} elseif ($set4gitoption -eq "2") {
    .\git-conf.ps1
} elseif ($set4gitoption -eq "3") {
    .\git-ignore.ps1
} elseif ($set4gitoption -eq "4") {
    .\git-install.ps1
    .\git-conf.ps1
} elseif ($set4gitoption -eq "5") {
    .\git-install.ps1
    .\git-conf.ps1
    .\git-ignore.ps1
}
Write-Host "
Finished!


Your Git Information

$(git --version)
$(git config --list)"
