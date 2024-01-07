Write-Host "`nConfiguring Git"
Write-Host " 1) Git configuration for user and email"
$gitUserName = Read-Host "  • User name: "
$gitUserEmail = Read-Host "  • User email: "
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "$gitUserName"
git config --global user.email "$gitUserEmail"

Write-Host " 2) Git configuration for default"
git config --global init.defaultBranch main
Write-Host "  • Git main branch default 'main'"
git config --global color.ui true
Write-Host "  • Git Colourising enabled"
git config --global core.editor vi
Write-Host "  • Git editor set to vi (vim)"
git lfs install
Write-Host "  • Git LFS installed"

Write-Host "`nDone!"