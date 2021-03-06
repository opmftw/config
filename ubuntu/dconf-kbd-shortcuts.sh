 #!/bin/bash

# === Switch to workspace ===
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-1 "['<Primary><Alt>j']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-2 "['<Primary><Alt>k']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-3 "['<Primary><Alt>l']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-4 "['<Primary><Alt>semicolon']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-5 "['<Primary><Alt>apostrophe']"

# === Move to workspace ===
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-1 "['<Primary><Alt>1']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-2 "['<Primary><Alt>2']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-3 "['<Primary><Alt>3']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-4 "['<Primary><Alt>4']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-5 "['<Primary><Alt>5']"

# === Toggle on all workspaces ===
dconf write /org/gnome/desktop/wm/keybindings/toggle-on-all-workspaces "['<Primary><Alt>slash']"

 
# === Move / Resize ===
dconf write /org/gnome/desktop/wm/keybindings/begin-move "['<Super>m']"
dconf write /org/gnome/desktop/wm/keybindings/begin-resize "['<Super>r']"

# === Cycle windows in workspace ===
dconf write /org/gnome/desktop/wm/keybindings/cycle-windows "['<Primary><Alt>bracketright']"
dconf write /org/gnome/desktop/wm/keybindings/cycle-windows-backward "['<Primary><Shift><Alt>bracketright']"

# execution:
# sudo chmod +x ./dconf-kbd-shortcuts.sh
# ./dconf-kbd-shortcuts.sh

# You can read hotkey format via:
# dconf read /org/gnome/desktop/wm/keybindings/switch-to-workspace-1

