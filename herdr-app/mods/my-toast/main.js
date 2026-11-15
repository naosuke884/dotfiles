// Notifications. Anything can post one with notify({ title, body, level, icon,
// action }). Every one goes to the desktop (mako) through
// ~/.local/bin/herdr-notify-focus, never an in-app toast; clicking it there
// comes back to the window and runs its action (e.g. go to the agent).

import { View, div } from "gpui-kit";
import { props, closeOverlay, exec, home } from "herdr";

export default class Toast extends View {
  init() {
    const p = props() ?? {};
    if (!p.overlay) return; // not a posted notification (herdr-app check)
    exec(`${home()}/.local/bin/herdr-notify-focus`, [p.title ?? "Herdr", p.body ?? "", p.level ?? "info", p.action ? JSON.stringify(p.action) : ""])
      .catch(e => console.error(`herdr-notify-focus: ${e}`));
    closeOverlay(p.overlay);
  }

  render() {
    return div();
  }
}
