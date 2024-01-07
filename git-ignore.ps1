Write-Host "Setup git ignore"

if (Test-Path "$env:userprofile\gitignore_global") {
    Remove-Item "$env:userprofile\gitignore_global"
}
git config --global core.excludesfile "$env:userprofile\.gitignore_global"
Write-Host "  • Generated git ingnore file: $env:userprofile\.gitignore_global"

Copy-Item .\gitignore-sample\windows "$env:userprofile\.gitignore_global"
Write-Host "  • Updated your global git ignore"
Write-Host "Done!"