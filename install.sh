#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/fish ~/.config
ln -s ${BASEDIR}/git ~/.config

# Tell iTerm2 to use load its settings from our saved profile
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${BASEDIR}/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true