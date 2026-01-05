#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/git ~/.config
ln -s ${BASEDIR}/hypr ~/.config
ln -s ${BASEDIR}/sway ~/.config
ln -s ${BASEDIR}/waybar ~/.config
ln -s ${BASEDIR}/foot ~/.config
ln -s ${BASEDIR}/darkman ~/.config
ln -s ${BASEDIR}/mako ~/.config
ln -s ${BASEDIR}/.zshrc ~/
ln -s ${BASEDIR}/tofi.conf ~/.config