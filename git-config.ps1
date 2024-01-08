Write-Host "`nConfiguring Git"
Write-Host " 1) Git configuration for user and email"
$gitUserName = Read-Host "  • User name"
$gitUserEmail = Read-Host "  • User email"
git config --unset --global user.name
git config --unset --global user.email
git config --global user.name "$gitUserName"
git config --global user.email "$gitUserEmail"

Write-Host " 2) Git configuration for default"
git config --global init.defaultBranch main
Write-Host "  • Git main branch default 'main'"
git config --global color.ui auto
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
Write-Host "  • Git Colourising enabled"
git config --global core.editor notepad
Write-Host "  • Git editor set to Notepad"
git lfs install
Write-Host "  • Git LFS installed"

Write-Host "`nDone!"