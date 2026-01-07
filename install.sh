#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/git ~/.config
ln -s ${BASEDIR}/hypr ~/.config
ln -s ${BASEDIR}/sway ~/.config
ln -s ${BASEDIR}/waybar ~/.config

mkdir -p ~/.config/foot
ln -s ${BASEDIR}/foot/foot.ini ~/.config/foot/foot.ini
ln -s ${BASEDIR}/foot/dark.ini ~/.config/foot/dark.ini
ln -s ${BASEDIR}/foot/light.ini ~/.config/foot/light.ini
ln -s ${BASEDIR}/foot/light.ini ~/.config/foot/theme.ini

mkdir -p ~/.config/mako
ln -s ${BASEDIR}/mako/config-dark ~/.config/mako/config-dark
ln -s ${BASEDIR}/mako/config-light ~/.config/mako/config-light
ln -s ${BASEDIR}/mako/config-light ~/.config/mako/config

mkdir -p ~/.config/darkman
mkdir -p ~/.local/share/darkman
ln -s ${BASEDIR}/darkman/config.yaml ~/.config/darkman/config.yaml
ln -s ${BASEDIR}/darkman/switch-theme ~/.local/share/darkman/switch-theme

ln -s ${BASEDIR}/xdg-desktop-portal ~/.config
ln -s ${BASEDIR}/.zshrc ~/
ln -s ${BASEDIR}/tofi.conf ~/.config
ln -s ${BASEDIR}/otters.jpg ~/Pictures/
ln -s ${BASEDIR}/oh-my-zsh/cypress.zsh-theme ~/.oh-my-zsh/custom/themes/

FIREFOX_PROFILE_PATH=$(echo $HOME/.mozilla/firefox/*.default-release)
echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "$FIREFOX_PROFILE_PATH/user.js"
mkdir -p "$FIREFOX_PROFILE_PATH/chrome"
ln -s ${BASEDIR}/firefox/userChrome.css "$FIREFOX_PROFILE_PATH/chrome/userChrome.css"