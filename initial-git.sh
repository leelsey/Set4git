outputDone() {
    echo '----> Done!'
}

gitInstall() {
    echo '\nInstalling Git'
    if [ "$(uname)" == "Darwin" ]; then
        brew update && brew install git git-lfs gh && git lfs install
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        if [ -x "$(command -v apt-get)" ]; then
            sudo apt-get update && sudo apt-get install -y git git-lfs gh
        elif [ -x "$(command -v dnf)" ]; then
            sudo dnf update && sudo dnf install -y git git-lfs gh
        elif [ -x "$(command -v pacman)" ]; then
            sudo pacman -Syu && sudo pacman -S --noconfirm git git-lfs gh
        elif [ -x "$(command -v zypper)" ]; then
            sudo zypper update && sudo zypper install -y git git-lfs gh
        fi
    fi
    outputDone
}

gitInstall
sh ./git-conf.sh
outputDone
sh ./git-ignore.sh
outputDone
