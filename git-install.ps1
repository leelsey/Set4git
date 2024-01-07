Write-Host "`nInstalling Git"

if (Test-Path "$env:ProgramData\scoop") {
    Write-Host "  • Using Scoop"
    scoop install main/git
    scoop install main/git-lfs
} elseif (Test-Path "$env:ProgramData\chocolatey") {
    Write-Host "  • Using Chocolatey"
    choco install git.install
    choco install git-lfs.install
} elseif (Test-Path "$env:ProgramData\winget") {
    Write-Host "  • Using WinGet"
    winget install -e --id Git.Git
    winget install -e --id GitHub.GitLFS
} else {
    Write-Host "  • Install Git/Git-LFS manually:`n    - https://git-scm.com/download/win`n    - https://git-lfs.com"
    Exit 1
}
Write-Host "  • Installed Git with LFS"
Write-Host "`nDone!"