# Set4git
Setup your git environment quickly.

## Usage
### Get Set4git
```shell
git clone https://github.com/leelsey/Set4git
cd Set4git
```
### Run Set4git
#### macOS & Linux
```shell
./set4git.sh
```
#### Windows
```powershell
.\set4git.ps1
```
If you can't run powershell script, try this:
```powershell
powershell -ExecutionPolicy ByPass -File .\set4git.ps1
```

## What Set4git do
### 1. Install git/git-lfs
- macOS: Install git by [Homebrew](https://brew.sh/).
- Linux
    - Debian-family: Install git by apt.
    - Redhat-family: Install git by dnf.
    - Arch-family: Install git by pacman.
    - SuSE-family: Install git by zypper.
- Windows: Install git by [Scoop](https://scoop.sh/), [Chocolatey](https://chocolatey.org/), [Winget](https://learn.microsoft.com/en-gb/windows/package-manager/winget/) or [Git for Windows(Manually)](https://git-scm.com/download/win).

### 2. Set git config
- Set user name and email.
- Set global ui/branch/diff/interactive/status colour auto.
- Set global editor vi (macOS & Linux) or notepad (Windows).
- Set global use lfs.

### 3. Global Git Ignore List
|Ignore|macOS|Linux|Windows|
|---|---|---|---|
|macOS|O|||
|Linux||O||
|Windows|||O|
|Vim|O|O|O|
|Emacs|O|O|O|
|Xcode|O|||
|Visual Studio|O||O|
|Visual Studio Code|O|O|O|
|SublimeText|O|O|O|
|Eclipse|O|O|O|
|Komodo Edit|O|O|O|
|IntelliJ IDEA|O|O|O|
|Android Studio|O|O|O|

It sourced by [Toptal](https://www.toptal.com/developers/gitignore). Visited and find more gitignore files in [gitignore.io](https://www.toptal.com/developers/gitignore).
