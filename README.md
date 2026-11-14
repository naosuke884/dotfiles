# dotfiles

Personal configuration, linked into `~/.config` by `./install.sh`.

## herdr-app

- `layouts/my-main.json`: clone of the shipped `main` layout. The right Files/Changes panel is removed; uses `my-tabs` and `my-spaces`.
- `mods/my-tabs`: tab bar with a **Zed** button instead of the Files/Changes buttons. Opens the focused pane's folder in Zed, over `zed ssh://` for spaces on other machines.
- `mods/my-spaces`: simplified spaces list (color dots instead of letter tiles, no folding, no "New space there" rows, no + next to the "Spaces" heading).
- `settings.json`, `keys.json`, `themes/`: personal look and keys.

## niri

- `config.kdl`: includes a window rule that opens Zed at 1/3 of the screen width.
- `scripts/`: helper scripts referenced from `config.kdl`.

## ghostty

- `config`: background opacity 0.8, ctrl+enter unbound (no fullscreen toggle).

## waybar

- `config.jsonc`, `style.css`: bar modules and style. `custom/focus` calls `bin/focus`.
- `mediaplayer.py`, `power_menu.xml`: from Waybar 0.15.0 `resources/custom_modules/`. `mediaplayer.py` needs `python-gobject` and `playerctl`.

## bin

- `focus`: focus session timer for niri / waybar / mako (linked to `~/.local/bin/focus`).
