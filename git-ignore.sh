globalIgrnoreFile() {
    mkdir -p ${ZDOTDIR:-~}/.config/git && touch ${ZDOTDIR:-~}/.config/git/gitignore_global && chmod 600 ${ZDOTDIR:-~}/.config/git/gitignore_global
    echo '#   _______ __  ____ \n#  / ____(_) /_/  _/___ _____  ____  ________ \n# / / __/ / __// // __ `/ __ \\/ __ \\/ ___/ _ \\ \n#/ /_/ / / /__/ // /_/ / / / / /_/ / /  /  __/ \n#\\____/_/\\__/___/\\__, /_/ /_/\\____/_/   \\___/ \n#               /____/ \n#\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
    git config --global --unset core.excludesfile
    git config --global core.excludesfile ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreDivider() {
    echo '#====================' >> ${ZDOTDIR:-~}/.config/git/gitignore_global>
}

ignoreMac() {
    echo '#### macOS ####

# General
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two \r
Icon

# Thumbnails
._*

# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

## macOS Patch
# iCloud generated files
*.icloud
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreLinux() {
    echo '#### Linux ####
*~

# temporary files which can be created if a process still has a handle open of a deleted file
.fuse_hidden*

# KDE directory preferences
.directory

# Linux trash folder which might appear on any partition or disk
.Trash-*

# .nfs files are created when an open file is removed but is still being accessed
.nfs*
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_glo
}

ignoreVim() {
    ignoreDivider
    echo '#### Vim ####

# Swap
[._]*.s[a-v][a-z]
!*.svg
[._]*.sw[a-p]
[._]s[a-rt-v][a-z]
[._]ss[a-gi-z]
[._]sw[a-p]

# Session
Session.vim
Sessionx.vim

# Temporary
.netrwhist
*~
# Auto-generated tag files
tags
# Persistent undo
[._]*.un~
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreEmacs() {
    ignoreDivider
    echo '#### Emacs ####

# -*- mode: gitignore; -*-
*~
\#*\#
/.emacs.desktop
/.emacs.desktop.lock
*.elc
auto-save-list
tramp
.\#*

# Org-mode
.org-id-locations
*_archive

# flymake-mode
*_flymake.*

# eshell files
/eshell/history
/eshell/lastdir

# elpa packages
/elpa/

# reftex files
*.rel

# AUCTeX auto folder
/auto/

# cask packages
.cask/
dist/

# Flycheck
flycheck_*.el

# server auth directory
/server/

# projectiles files
.projectile

# directory configuration
.dir-locals.el

# network security
/network-security.data
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreXcode() {
    ignoreDivider
    echo '#### Xcode ####

# User settings
xcuserdata/

# Xcode 8 and earlier
*.xcscmblueprint
*.xccheckout

## Xcode Patch
*.xcodeproj/*
!*.xcodeproj/project.pbxproj
!*.xcodeproj/xcshareddata/
!*.xcworkspace/contents.xcworkspacedata
/*.gcno
**/xcshareddata/WorkspaceSettings.xcsettings
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreIntelliJ() {
    ignoreDivider
    echo '#### IntelliJ ####
# User-specific stuff
.idea/**/workspace.xml
.idea/**/tasks.xml
.idea/**/usage.statistics.xml
.idea/**/dictionaries
.idea/**/shelf

# AWS User-specific
.idea/**/aws.xml

# Generated files
.idea/**/contentModel.xml

# Sensitive or high-churn files
.idea/**/dataSources/
.idea/**/dataSources.ids
.idea/**/dataSources.local.xml
.idea/**/sqlDataSources.xml
.idea/**/dynamic.xml
.idea/**/uiDesigner.xml
.idea/**/dbnavigator.xml

# Gradle
.idea/**/gradle.xml
.idea/**/libraries

# Gradle and Maven with auto-import
# When using Gradle or Maven with auto-import, you should exclude module files,
# since they will be recreated, and may cause churn.  Uncomment if using
# auto-import.
# .idea/artifacts
# .idea/compiler.xml
# .idea/jarRepositories.xml
# .idea/modules.xml
# .idea/*.iml
# .idea/modules
# *.iml
# *.ipr

# CMake
cmake-build-*/

# Mongo Explorer plugin
.idea/**/mongoSettings.xml

# File-based project format
*.iws

# IntelliJ
out/

# mpeltonen/sbt-idea plugin
.idea_modules/

# JIRA plugin
atlassian-ide-plugin.xml

# Cursive Clojure plugin
.idea/replstate.xml

# SonarLint plugin
.idea/sonarlint/

# Crashlytics plugin (for Android Studio and IntelliJ)
com_crashlytics_export_strings.xml
crashlytics.properties
crashlytics-build.properties
fabric.properties

# Editor-based Rest Client
.idea/httpRequests

# Android studio 3.1+ serialized cache file
.idea/caches/build_file_checksums.ser

## Intellij Patch
# Comment Reason: https://github.com/joeblau/gitignore.io/issues/186#issuecomment-215987721

# *.iml
# modules.xml
# .idea/misc.xml
# *.ipr

# Sonarlint plugin
# https://plugins.jetbrains.com/plugin/7973-sonarlint
.idea/**/sonarlint/

# SonarQube Plugin
# https://plugins.jetbrains.com/plugin/7238-sonarqube-community-plugin
.idea/**/sonarIssues.xml

# Markdown Navigator plugin
# https://plugins.jetbrains.com/plugin/7896-markdown-navigator-enhanced
.idea/**/markdown-navigator.xml
.idea/**/markdown-navigator-enh.xml
.idea/**/markdown-navigator/

# Cache file creation bug
# See https://youtrack.jetbrains.com/issue/JBR-2257
.idea/$CACHE_FILE$

# CodeStream plugin
# https://plugins.jetbrains.com/plugin/12206-codestream
.idea/codestream.xml

# Azure Toolkit for IntelliJ plugin
# https://plugins.jetbrains.com/plugin/8053-azure-toolkit-for-intellij
.idea/**/azureSettings.xml
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreAndroidStudio() {
    ignoreDivider
    echo '#### Android Studio ####
### AndroidStudio ###
# Covers files to be ignored for android development using Android Studio.

# Built application files
*.apk
*.ap_
*.aab

# Files for the ART/Dalvik VM
*.dex

# Java class files
*.class

# Generated files
bin/
gen/
out/

# Gradle files
.gradle
.gradle/
build/

# Signing files
.signing/

# Local configuration file (sdk path, etc)
local.properties

# Proguard folder generated by Eclipse
proguard/

# Log Files
*.log

# Android Studio
/*/build/
/*/local.properties
/*/out
/*/*/build
/*/*/production
captures/
.navigation/
*.ipr
*~
*.swp

# Keystore files
*.jks
*.keystore

# Google Services (e.g. APIs or Firebase)
# google-services.json

# Android Patch
gen-external-apklibs

# External native build folder generated in Android Studio 2.2 and later
.externalNativeBuild

# NDK
obj/

# IntelliJ IDEA
*.iml
*.iws
/out/

# User-specific configurations
.idea/caches/
.idea/libraries/
.idea/shelf/
.idea/workspace.xml
.idea/tasks.xml
.idea/.name
.idea/compiler.xml
.idea/copyright/profiles_settings.xml
.idea/encodings.xml
.idea/misc.xml
.idea/modules.xml
.idea/scopes/scope_settings.xml
.idea/dictionaries
.idea/vcs.xml
.idea/jsLibraryMappings.xml
.idea/datasources.xml
.idea/dataSources.ids
.idea/sqlDataSources.xml
.idea/dynamic.xml
.idea/uiDesigner.xml
.idea/assetWizardSettings.xml
.idea/gradle.xml
.idea/jarRepositories.xml
.idea/navEditor.xml

# Legacy Eclipse project files
.classpath
.project
.cproject
.settings/

# Mobile Tools for Java (J2ME)
.mtj.tmp/

# Package Files #
*.war
*.ear

# virtual machine crash logs (Reference: http://www.java.com/en/download/help/error_hotspot.xml)
hs_err_pid*

## Plugin-specific files:

# mpeltonen/sbt-idea plugin
.idea_modules/

# JIRA plugin
atlassian-ide-plugin.xml

# Mongo Explorer plugin
.idea/mongoSettings.xml

# Crashlytics plugin (for Android Studio and IntelliJ)
com_crashlytics_export_strings.xml
crashlytics.properties
crashlytics-build.properties
fabric.properties

## AndroidStudio Patch
!/gradle/wrapper/gradle-wrapper.jar
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreEclipse() {
    ignoreDivider
    echo '#### Eclipse ####

.metadata
bin/
tmp/
*.tmp
*.bak
*.swp
*~.nib
local.properties
.settings/
.loadpath
.recommenders

# External tool builders
.externalToolBuilders/

# Locally stored "Eclipse launch configurations"
*.launch

# PyDev specific (Python IDE for Eclipse)
*.pydevproject

# CDT-specific (C/C++ Development Tooling)
.cproject

# CDT- autotools
.autotools

# Java annotation processor (APT)
.factorypath

# PDT-specific (PHP Development Tools)
.buildpath

# sbteclipse plugin
.target

# Tern plugin
.tern-project

# TeXlipse plugin
.texlipse

# STS (Spring Tool Suite)
.springBeans

# Code Recommenders
.recommenders/

# Annotation Processing
.apt_generated/
.apt_generated_test/

# Scala IDE specific (Scala & Java development for Eclipse)
.cache-main
.scala_dependencies
.worksheet

# Uncomment this line if you wish to ignore the project description file.
# Typically, this file would be tracked if it contains build/dependency configurations:
#.project

## Eclipse Patch
# Spring Boot Tooling
.sts4-cache/
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreKomodo() {
    ignoreDivider
    echo '#### Komodo ####
*.komodoproject
.komodotools
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreVSC() {
    ignoreDivider
    echo '#### VisualStudioCode ####

.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json
!.vscode/*.code-snippets

# Local History for Visual Studio Code
.history/

# Built Visual Studio Code Extensions
*.vsix

## VisualStudioCode Patch

# Ignore all local history of files
.history
.ionide

# Support for Project snippet scope
.vscode/*.code-snippets

# Ignore code-workspaces
*.code-workspace
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

ignoreSublimeText() {
    ignoreDivider
    echo '#### SublimeText ####

# Cache files for Sublime Text
*.tmlanguage.cache
*.tmPreferences.cache
*.stTheme.cache

# Workspace files are user-specific
*.sublime-workspace

# Project files should be checked into the repository, unless a significant
# proportion of contributors will probably not be using Sublime Text
# *.sublime-project

# SFTP configuration file
sftp-config.json
sftp-config-alt*.json

# Package control specific files
Package Control.last-run
Package Control.ca-list
Package Control.ca-bundle
Package Control.system-ca-bundle
Package Control.cache/
Package Control.ca-certs/
Package Control.merged-ca-bundle
Package Control.user-ca-bundle
oscrypto-ca-bundle.crt
bh_unicode_properties.cache

# Sublime-github package stores a github token in this file
# https://packagecontrol.io/packages/sublime-github
GitHub.sublime-settings
\n\n' >> ${ZDOTDIR:-~}/.config/git/gitignore_global
}

echo '\n\nSetup git ignore files & directories'
echo ' 1) Make gitignore_global on ~/.config/git/gitignore_global'
globalIgrnoreFile
echo ' 2) Add your ignore files'
if [ "$(uname)" == "Darwin" ]; then
    ignoreMac
    ignoreXcode
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ignoreLinux
fi
ignoreVim
ignoreEmacs
ignoreIntelliJ
ignoreAndroidStudio
ignoreEclipse
ignoreKomodo
ignoreVSC
ignoreSublimeText
