#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf ${BASEDIR}/git ~/.config
ln -sf ${BASEDIR}/hypr ~/.config
ln -sf ${BASEDIR}/sway ~/.config
ln -sf ${BASEDIR}/waybar ~/.config

mkdir -p ~/.config/foot
ln -sf ${BASEDIR}/foot/foot.ini ~/.config/foot/foot.ini
ln -sf ${BASEDIR}/foot/dark.ini ~/.config/foot/dark.ini
ln -sf ${BASEDIR}/foot/light.ini ~/.config/foot/light.ini
ln -sf ${BASEDIR}/foot/light.ini ~/.config/foot/theme.ini

mkdir -p ~/.config/mako
ln -sf ${BASEDIR}/mako/config-dark ~/.config/mako/config-dark
ln -sf ${BASEDIR}/mako/config-light ~/.config/mako/config-light
ln -sf ${BASEDIR}/mako/config-light ~/.config/mako/config

mkdir -p ~/.config/darkman
mkdir -p ~/.local/share/darkman
ln -sf ${BASEDIR}/darkman/config.yaml ~/.config/darkman/config.yaml
ln -sf ${BASEDIR}/darkman/switch-theme ~/.local/share/darkman/switch-theme

mkdir -p ~/.config/uwsm
ln -sf ${BASEDIR}/uwsm/env ~/.config/uwsm/env

ln -sf ${BASEDIR}/xdg-desktop-portal ~/.config
ln -sf ${BASEDIR}/.zshrc ~/
ln -sf ${BASEDIR}/tofi.conf ~/.config
ln -sf ${BASEDIR}/oh-my-zsh/cypress.zsh-theme ~/.oh-my-zsh/custom/themes/

FIREFOX_PROFILE_PATH=$(echo $HOME/.mozilla/firefox/*.default-release)
echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "$FIREFOX_PROFILE_PATH/user.js"
mkdir -p "$FIREFOX_PROFILE_PATH/chrome"
ln -sf ${BASEDIR}/firefox/userChrome.css "$FIREFOX_PROFILE_PATH/chrome/userChrome.css"

# greetd config is system-wide and owned by root, so copy instead of symlink
sudo mkdir -p /etc/greetd
sudo cp ${BASEDIR}/greetd/config.toml /etc/greetd/config.toml
sudo cp ${BASEDIR}/greetd/regreet.toml /etc/greetd/regreet.toml
sudo cp ${BASEDIR}/greetd/hyprland.conf /etc/greetd/hyprland.conf

# system-wide background image for greeter and desktop
sudo mkdir -p /usr/share/backgrounds
sudo cp ${BASEDIR}/otters.jpg /usr/share/backgrounds/

gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'
