#!/bin/sh

# set the color theme for future instances of foot terminal
ln -sf ~/.config/foot/dark.ini ~/.config/foot/theme.ini

# set the color theme for existing instances of foot terminal
color-switcher dark

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3-dark
ln -sf ~/.config/mako/config-dark ~/.config/mako/config
makoctl reload

