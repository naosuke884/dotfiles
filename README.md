# dotfiles

Personal configuration, linked into `~/.config` by `./install.sh`.

## herdr-app

- `layouts/my-main.json`: clone of the shipped `main` layout. The right Files/Changes panel is removed; uses `my-tabs`, `my-spaces` and `my-toast`.
- `mods/my-tabs`: tab bar with a **Zed** button instead of the Files/Changes buttons. Opens the focused pane's folder in Zed, over `zed ssh://` for spaces on other machines.
- `mods/my-spaces`: simplified spaces list (color dots instead of letter tiles, no folding, no "New space there" rows, no + next to the "Spaces" heading). Each machine header has two buttons instead of one +: new terminal space, new Claude Code space.
- `mods/my-toast`: notifications. Always a desktop notification (mako) through `bin/herdr-notify-focus`, never an in-app toast; clicking it brings the window back and runs the notification's action.
- `settings.json`, `keys.json`, `themes/`: personal look and keys.

## niri

- `config.kdl`: includes a window rule that opens Zed at 1/3 of the screen width.
- `scripts/`: helper scripts referenced from `config.kdl`.
- `bin/niri-sticky`: pins the focused window (Mod+P): makes it floating and moves it to whichever workspace you switch to.

## ghostty

- `config`: background opacity 0.8, ctrl+enter unbound (no fullscreen toggle).

## waybar

- `config.jsonc`, `style.css`: bar modules and style.
- `mediaplayer.py`, `power_menu.xml`: from Waybar 0.15.0 `resources/custom_modules/`. `mediaplayer.py` needs `python-gobject` and `playerctl`.

## mako

- `config`: left-click on a Herdr notification runs its default action (back to herdr-app).

## fuzzel

- `fuzzel.ini`: icon theme Adwaita.

## swaylock

- `config`: caps lock indicator, failed-attempt count, ignore empty passwords.

## bin

- `herdr-notify-focus`: sends herdr-app notifications to the desktop and handles the click (linked to `~/.local/bin/herdr-notify-focus`).
