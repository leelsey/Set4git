globalIgrnoreFile() {
    mkdir -p ${ZDOTDIR:-~}/.config/git && touch ${ZDOTDIR:-~}/.config/git/gitignore_global && chmod 600 ${ZDOTDIR:-~}/.config/git/gitignore_global
    echo '#   _______ __  ____ \n#  / ____(_) /_/  _/___ _____  ____  ________ \n# / / __/ / __// // __ `/ __ \\/ __ \\/ ___/ _ \\ \n#/ /_/ / / /__/ // /_/ / / / / /_/ / /  /  __/ \n#\\____/_/\\__/___/\\__, /_/ /_/\\____/_/   \\___/ \n#               /____/ \n#\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
    git config --global --unset core.excludesfile
    git config --global core.excludesfile ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreDivider() {
    echo '#====================' >> ${ZDOTDIR:-~}/.config/git/gitignore_global>
}

echo '\n\nSetup git ignore files & directories'
echo ' 1) Make gitignore_global on ~/.config/git/gitignore_global'
globalIgrnoreFile
echo ' 2) Add your ignore files'

