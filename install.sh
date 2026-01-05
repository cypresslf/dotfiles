#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/git ~/.config
ln -s ${BASEDIR}/hypr ~/.config
ln -s ${BASEDIR}/sway ~/.config
ln -s ${BASEDIR}/waybar ~/.config
ln -s ${BASEDIR}/foot ~/.config
ln -s ${BASEDIR}/darkman ~/.config
ln -s ${BASEDIR}/mako ~/.config
ln -sf ~/.config/mako/config-light ~/.config/mako/config
ln -s ${BASEDIR}/.zshrc ~/
ln -s ${BASEDIR}/tofi.conf ~/.config
ln -s ${BASEDIR}/otters.jpg ~/Pictures/

FIREFOX_PROFILE_PATH=$(echo $HOME/.mozilla/firefox/*.default-release)
echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "$FIREFOX_PROFILE_PATH/user.js"
mkdir -p "$FIREFOX_PROFILE_PATH/chrome"
ln -s ${BASEDIR}/firefox/userChrome.css "$FIREFOX_PROFILE_PATH/chrome/userChrome.css"