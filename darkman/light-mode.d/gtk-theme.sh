#!/bin/sh

# set the color theme for future instances of foot terminal
ln -sf ~/.config/foot/light.ini ~/.config/foot/theme.ini

# set the color theme for existing instances of foot terminal
color-switcher light

gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3
ln -sf ~/.config/mako/config-light ~/.config/mako/config
makoctl reload


