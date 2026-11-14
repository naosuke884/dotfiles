#!/usr/bin/env bash
# Link the files in this repo into ~/.config. Existing files are moved to *.bak-<timestamp>.
set -euo pipefail
repo="$(cd "$(dirname "$0")" && pwd)"
stamp="$(date +%Y%m%d%H%M%S)"

link() {
  local src="$repo/$1" dst="$HOME/.config/$1"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then return; fi
  if [ -e "$dst" ] || [ -L "$dst" ]; then mv "$dst" "$dst.bak-$stamp"; fi
  ln -s "$src" "$dst"
  echo "linked $dst"
}

link herdr-app/settings.json
link herdr-app/keys.json
link herdr-app/layouts/my-main.json
link herdr-app/themes/gruvbox.json
link herdr-app/themes/atom-one-dark.json
link herdr-app/mods/my-tabs
link herdr-app/mods/my-spaces
link niri/config.kdl
link niri/scripts
link ghostty/config
