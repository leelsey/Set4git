#! /usr/bin/env bash

ignoreLogo() {
    echo "#   ___ _ _     ___
#  / __(_| |_  |_ _|__ _ _ _  ___ _ _ ___
# | (_ | |  _|  | |/ _\` | ' \\/ _ | '_/ -_)
#  \\___|_|\\__| |___\\__, |_||_\\___|_| \\___|
#                  |___/
#   by leelsey with gitignore.io

" >> $HOME/.config/git/gitignore_global
}


ignoreMac() {
    echo '
#-------------------------------#
#-------------macOS-------------#

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

### macOS Patch ###
# iCloud generated files
*.icloud

' >> $HOME/.config/git/gitignore_global
}


ignoreXcode() {
    echo '
#-------------------------------#
#-------------Xcode-------------#

# Xcode
## User settings
xcuserdata/

## Xcode 8 and earlier
*.xcscmblueprint
*.xccheckout

### Xcode Patch ###
*.xcodeproj/*
!*.xcodeproj/project.pbxproj
!*.xcodeproj/xcshareddata/
!*.xcodeproj/project.xcworkspace/
!*.xcworkspace/contents.xcworkspacedata
/*.gcno
**/xcshareddata/WorkspaceSettings.xcsettings

# XcodeInjection
iOSInjectionProject/

' >> $HOME/.config/git/gitignore_global
}


ignoreLinux() {
    echo '
#-------------------------------#
#-------------Linux-------------#

# General
*~

# temporary files which can be created if a process still has a handle open of a deleted file
.fuse_hidden*

# KDE directory preferences
.directory

# Linux trash folder which might appear on any partition or disk
.Trash-*

# .nfs files are created when an open file is removed but is still being accessed
.nfs*

' >> $HOME/.config/git/gitignore_glo
}


ignoreVim() {
    echo '
#-------------------------------#
#--------------Vim--------------#

# Swap
[._]*.s[a-v][a-z]
#!*.svg 
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

' >> $HOME/.config/git/gitignore_global
}


ignoreVisualStudio() {
    echo '
#-------------------------------#
#---------VisualStudio----------#

# User-specific files
*.rsuser
*.suo
*.user
*.userosscache
*.sln.docstates

# User-specific files (MonoDevelop/Xamarin Studio)
*.userprefs

# Mono auto generated files
mono_crash.*

# Build results
[Dd]ebug/
[Dd]ebugPublic/
[Rr]elease/
[Rr]eleases/
x64/
x86/
[Ww][Ii][Nn]32/
[Aa][Rr][Mm]/
[Aa][Rr][Mm]64/
bld/
[Bb]in/
[Oo]bj/
[Ll]og/
[Ll]ogs/

# Visual Studio 2015/2017 cache/options directory
.vs/
# Uncomment if you have tasks that create the project‘s static files in wwwroot
#wwwroot/

# Visual Studio 2017 auto generated files
Generated\ Files/

# MSTest test Results
[Tt]est[Rr]esult*/
[Bb]uild[Ll]og.*

# NUnit
*.VisualState.xml
TestResult.xml
nunit-*.xml

# Build Results of an ATL Project
[Dd]ebugPS/
[Rr]eleasePS/
dlldata.c

# Benchmark Results
BenchmarkDotNet.Artifacts/

# .NET Core
project.lock.json
project.fragment.lock.json
artifacts/

# ASP.NET Scaffolding
ScaffoldingReadMe.txt

# StyleCop
StyleCopReport.xml

# Files built by Visual Studio
*_i.c
*_p.c
*_h.h
*.ilk
*.meta
*.obj
*.iobj
*.pch
*.pdb
*.ipdb
*.pgc
*.pgd
*.rsp
*.sbr
*.tlb
*.tli
*.tlh
*.tmp
*.tmp_proj
*_wpftmp.csproj
*.log
*.tlog
*.vspscc
*.vssscc
.builds
*.pidb
*.svclog
*.scc

# Chutzpah Test files
_Chutzpah*

# Visual C++ cache files
ipch/
*.aps
*.ncb
*.opendb
*.opensdf
*.sdf
*.cachefile
*.VC.db
*.VC.VC.opendb

# Visual Studio profiler
*.psess
*.vsp
*.vspx
*.sap

# Visual Studio Trace Files
*.e2e

# TFS 2012 Local Workspace
$tf/

# Guidance Automation Toolkit
*.gpState

# ReSharper is a .NET coding add-in
_ReSharper*/
*.[Rr]e[Ss]harper
*.DotSettings.user

# TeamCity is a build add-in
_TeamCity*

# DotCover is a Code Coverage Tool
*.dotCover

# AxoCover is a Code Coverage Tool
.axoCover/*
!.axoCover/settings.json

# Coverlet is a free, cross platform Code Coverage Tool
coverage*.json
coverage*.xml
coverage*.info

# Visual Studio code coverage results
*.coverage
*.coveragexml

# NCrunch
_NCrunch_*
.*crunch*.local.xml
nCrunchTemp_*

# MightyMoose
*.mm.*
AutoTest.Net/

# Web workbench (sass)
.sass-cache/

# Installshield output folder
[Ee]xpress/

# DocProject is a documentation generator add-in
DocProject/buildhelp/
DocProject/Help/*.HxT
DocProject/Help/*.HxC
DocProject/Help/*.hhc
DocProject/Help/*.hhk
DocProject/Help/*.hhp
DocProject/Help/Html2
DocProject/Help/html

# Click-Once directory
publish/

# Publish Web Output
*.[Pp]ublish.xml
*.azurePubxml
# Note: Comment the next line if you want to checkin your web deploy settings,
# but database connection strings (with potential passwords) will be unencrypted
*.pubxml
*.publishproj

# Microsoft Azure Web App publish settings. Comment the next line if you want to
# checkin your Azure Web App publish settings, but sensitive information contained
# in these scripts will be unencrypted
PublishScripts/

# NuGet Packages
*.nupkg
# NuGet Symbol Packages
*.snupkg
# The packages folder can be ignored because of Package Restore
**/[Pp]ackages/*
# except build/, which is used as an MSBuild target.
!**/[Pp]ackages/build/
# Uncomment if necessary however generally it will be regenerated when needed
#!**/[Pp]ackages/repositories.config
# NuGet v3‘s project.json files produces more ignorable files
*.nuget.props
*.nuget.targets

# Microsoft Azure Build Output
csx/
*.build.csdef

# Microsoft Azure Emulator
ecf/
rcf/

# Windows Store app package directories and files
AppPackages/
BundleArtifacts/
Package.StoreAssociation.xml
_pkginfo.txt
*.appx
*.appxbundle
*.appxupload

# Visual Studio cache files
# files ending in .cache can be ignored
*.[Cc]ache
# but keep track of directories ending in .cache
!?*.[Cc]ache/

# Others
ClientBin/
~$*
*~
*.dbmdl
*.dbproj.schemaview
*.jfm
*.pfx
*.publishsettings
orleans.codegen.cs

# Including strong name files can present a security risk
# (https://github.com/github/gitignore/pull/2483#issue-259490424)
#*.snk

# Since there are multiple workflows, uncomment next line to ignore bower_components
# (https://github.com/github/gitignore/pull/1529#issuecomment-104372622)
#bower_components/

# RIA/Silverlight projects
Generated_Code/

# Backup & report files from converting an old project file
# to a newer Visual Studio version. Backup files are not needed,
# because we have git ;-)
_UpgradeReport_Files/
Backup*/
UpgradeLog*.XML
UpgradeLog*.htm
ServiceFabricBackup/
*.rptproj.bak

# SQL Server files
*.mdf
*.ldf
*.ndf

# Business Intelligence projects
*.rdl.data
*.bim.layout
*.bim_*.settings
*.rptproj.rsuser
*- [Bb]ackup.rdl
*- [Bb]ackup ([0-9]).rdl
*- [Bb]ackup ([0-9][0-9]).rdl

# Microsoft Fakes
FakesAssemblies/

# GhostDoc plugin setting file
*.GhostDoc.xml

# Node.js Tools for Visual Studio
.ntvs_analysis.dat
node_modules/

# Visual Studio 6 build log
*.plg

# Visual Studio 6 workspace options file
*.opt

# Visual Studio 6 auto-generated workspace file (contains which files were open etc.)
*.vbw

# Visual Studio 6 auto-generated project file (contains which files were open etc.)
*.vbp

# Visual Studio 6 workspace and project file (working project files containing files to include in project)
*.dsw
*.dsp

# Visual Studio 6 technical files

# Visual Studio LightSwitch build output
**/*.HTMLClient/GeneratedArtifacts
**/*.DesktopClient/GeneratedArtifacts
**/*.DesktopClient/ModelManifest.xml
**/*.Server/GeneratedArtifacts
**/*.Server/ModelManifest.xml
_Pvt_Extensions

# Paket dependency manager
.paket/paket.exe
paket-files/

# FAKE - F# Make
.fake/

# CodeRush personal settings
.cr/personal

# Python Tools for Visual Studio (PTVS)
__pycache__/
*.pyc

# Cake - Uncomment if you are using it
# tools/**
# !tools/packages.config

# Tabs Studio
*.tss

# Telerik‘s JustMock configuration file
*.jmconfig

# BizTalk build output
*.btp.cs
*.btm.cs
*.odx.cs
*.xsd.cs

# OpenCover UI analysis results
OpenCover/

# Azure Stream Analytics local run output
ASALocalRun/

# MSBuild Binary and Structured Log
*.binlog

# NVidia Nsight GPU debugger configuration file
*.nvuser

# MFractors (Xamarin productivity tool) working folder
.mfractor/

# Local History for Visual Studio
.localhistory/

# Visual Studio History (VSHistory) files
.vshistory/

# BeatPulse healthcheck temp database
healthchecksdb

# Backup folder for Package Reference Convert tool in Visual Studio 2017
MigrationBackup/

# Ionide (cross platform F# VS Code tools) working folder
.ionide/

# Fody - auto-generated XML schema
FodyWeavers.xsd

# VS Code files for those working on multiple tools
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json
*.code-workspace

# Local History for Visual Studio Code
.history/

# Windows Installer files from build outputs
*.cab
*.msi
*.msix
*.msm
*.msp

# JetBrains Rider
*.sln.iml


' >> $HOME/.config/git/gitignore_global
}


ignoreVisualStudioCode() {
    echo '
#-------------------------------#
#-------VisualStudioCode--------#

# General
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

### VisualStudioCode Patch ###
# Ignore all local history of files
.history
.ionide

' >> $HOME/.config/git/gitignore_global
}


ignoreEmacs() {
    echo '
#-------------------------------#
#-------------Emacs-------------#

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

' >> $HOME/.config/git/gitignore_global
}


ignoreSublimeText() {
    echo '
#-------------------------------#
#----------SublimeText----------#

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

' >> $HOME/.config/git/gitignore_global
}


ignoreEclipse() {
    echo '
#-------------------------------#
#------------Eclipse------------#

# General
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

### Eclipse Patch ###
# Spring Boot Tooling
.sts4-cache/

' >> $HOME/.config/git/gitignore_global
}


ignoreKomodo() {
    echo '
#-------------------------------#
#----------KomodoEdit-----------#

# General
*.komodoproject
.komodotools

' >> $HOME/.config/git/gitignore_global
}


ignoreIntelliJ() {
    echo '
#-------------------------------#
#-----------IntelliJ------------#

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

### Intellij Patch ###
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

' >> $HOME/.config/git/gitignore_global
}


ignoreAndroidStudio() {
    echo '
#-------------------------------#
#---------AndroidStudio---------#

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

### AndroidStudio Patch ###
!/gradle/wrapper/gradle-wrapper.jar

' >> $HOME/.config/git/gitignore_global
}


echo ''
echo 'Setup git ignore'

if [ -f "$HOME/.config/git/gitignore_global" ]; then
    rm -f $HOME/.config/git/gitignore_global
fi
mkdir -p $HOME/.config/git
touch $HOME/.config/git/gitignore_global
chmod 644 $HOME/.config/git/gitignore_global
ignoreLogo
git config --global --unset core.excludesfile
git config --global core.excludesfile $HOME/.config/git/gitignore_global
echo '  • Generated git ingnore file: '$HOME'/.config/git/gitignore_global'

if [ "$(uname)" == "Darwin" ]; then
    ignoreMac
    ignoreXcode
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ignoreLinux
fi
ignoreVim
if [ "$(uname)" == "Darwin" ]; then
    ignoreVisualStudio
fi
ignoreVisualStudioCode
ignoreEmacs
ignoreSublimeText
ignoreEclipse
ignoreKomodo
ignoreIntelliJ
ignoreAndroidStudio
echo '  • Updated your global git ignore'
echo 'Done!'