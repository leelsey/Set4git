Write-Host "`nSetup git ignore"

if (!(Test-Path "$env:userprofile\.config\git")) {
    New-Item -ItemType Directory -Force -Path "$env:userprofile\.config\git"
}
if (Test-Path "$env:userprofile\.config\git\.gitignore_global") {
    Remove-Item "$env:userprofile\.config\git\.gitignore_global"
}

git config --global --unset core.excludesfile
git config --global core.excludesfile "$env:userprofile\.config\git\.gitignore_global"
Write-Host "  • Generated git ingnore file: $env:userprofile\.config\git\.gitignore_global"

Copy-Item .\gitignore-sample\windows "$env:userprofile\.config\git\.gitignore_global"
Write-Host "  • Updated your global git ignore"
Write-Host "Done!"