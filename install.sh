#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/git ~/.config
ln -s ${BASEDIR}/vim/vimrc ~/.vimrc
ln -s ${BASEDIR}/hypr ~/.config
ln -s ${BASEDIR}/waybar ~/.config
ln -s ${BASEDIR}/foot ~/.config
