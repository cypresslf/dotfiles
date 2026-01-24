#!/usr/bin/env bash
set -euo pipefail

# deps for building AUR packages
sudo pacman -S --needed --noconfirm git base-devel

# install paru
cd /tmp
rm -rf paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm

# install AUR packages
paru -S --noconfirm --needed \
  1password \
  cursor-bin \
  slack-desktop \
  visual-studio-code-bin \
  tofi \
  wl-screenrec \
  wlogout \
  arch-manwarn
