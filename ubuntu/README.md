# Setup after INSTALLATION.md

## Make Tracker miner ignore node_modules and venv/ directories so it doesn't spike your CPU

[Blog post Ubuntu Tracker Ignore](https://bobbyhadz.com/blog/ubuntu-tracker-ignore).
To see directories ignored by default type into your terminal:

```bash
gsettings get org.freedesktop.Tracker.Miner.Files ignored-directories
```

Now add `node_modules` and `venv` and restart tracker:

```bash
gsettings set org.freedesktop.Tracker.Miner.Files ignored-directories "['po', 'CVS', 'core-dumps', 'lost+found', 'node_modules', 'venv']"

tracker reset -r
```

---

## Adjust your scroll speed

Copy the `.imwheelrc` file from the current directory into your `~` (home)
directory and run:

```bash
sudo apt install imwheel
imwheel -b "4 5"
```

You can adjust the speed by editing the file according to the comments and
restarting `imwheelrc` by:

```bash
killall imwheel
imwheel -b "4 5"
```

The command only influences the mouse 4 and 5 buttons, which are scroll up and
scroll down, otherwise `imwheel` would block your `side` mouse buttons, like
back and forth, etc.

Then add `imwheel` to your startup applications, don't forget to use the command
`imwheel -b "4 5"` so you don't block your mouse's side buttons.

The command used to get the name of the service to set the scroll speed for is:

```
xprop WM_CLASS | grep -o '"[^"]*"' | head -n 1
```

After you enter it in the terminal you just click on the application and the
name is written in the terminal.

---

## Random [gnome extensions](https://extensions.gnome.org/#) and Gnome Tweaks settings

- [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/).
  Copy / paste clipboard history manager.

- [Smart transparent topbar](https://extensions.gnome.org/extension/2588/fully-transparent-top-bar/) -
  adjust topbar's colors / transparency

- [Transparent window moving](https://extensions.gnome.org/extension/1446/transparent-window-moving/) -
  make window transparent when moving it. Set to opacity 200, animation time
  0.10.

- [User Themes](https://extensions.gnome.org/extension/19/user-themes/). Loads
  user themes into gnome tweak tools. Applications theme - `Yaru-dark`, Cursor -
  `DMZ-Black`, Icons - `Papirus-Dark`, shell - `Yaru-dark`.

- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/).
  Makes your bottom dock take less space.

- [Switcher](https://extensions.gnome.org/extension/973/switcher/) - switch
  between application windows by typing the name.

  - Switcher settings - **Hotkey to activate** - `Super+w`, **font size** -
    `20`, **Icon size** - `26`, **width %** - `40`, tick
    `never show usage tips`.

- Set `Caps lock` to `Control`. Click `Keyboard & Mouse` ->
  `Additional Layout Options` -> `Caps Lock behavior` ->
  `Caps Lock is also a Ctrl`

- **Start up applications**:
  [Albert](https://albertlauncher.github.io/installing/) and **Wallch**. For
  **Wallch** do:

  ```
  sudo apt-get update
  sudo apt-get install wallch
  ```

- **Workspaces** - Select `Static Workspaces` and set it to 5. Select
  `Workspaces span displays`.

---

## Install some applications, utilities

- [Node version manager](https://github.com/nvm-sh/nvm#installing-and-updating) -
  don't install `node`, just install `nvm`, it's way easier to use, update,
  handle permissions, etc.

- **Gnome Tweak Tools** - extends ubuntu configuration

  ```bash
  sudo apt-get update
  sudo apt-add-repository universe
  sudo apt install gnome-tweak-tool
  ```

- **dconf-editor** - gui for editing ubuntu configuration like keyboard
  shortcuts, etc.

  ```bash
  sudo add-apt-repository universe
  sudo apt update
  sudo apt install dconf-cli dconf-editor
  ```

  Open dconf editor and set that you want to save the ubuntu application session
  (doesn't work on ubuntu 20.04, hopefully works in the future): Click `org` =>
  `gnome` => `gnome-session` => tick `auto-save-session`.

  After installing **dconf-editor** - set up the kbd shortcuts

  ```bash
  sudo chmod +x ./ubuntu/dconf-kbd-shortcuts.sh
  ./ubuntu/dconf-kbd-shortcuts.sh
  ```

- [Albert](https://albertlauncher.github.io/installing/). Launcher for quick
  application / search / files/ bookmarks lookup. Current `Albert` settings
  are - `Applications`, `Calculator`, `Chromium`, `Files` - for files I have
  deselected all and I use it to open a directory in nautilus, by typing
  `/path/to/directory`, `Terminal` - execute terminal commands by starting with
  `>`, `WebSearch` - search google, youtube, github, etc.

  - General `Albert` settings - `Hotkey` - `Ctrl+Alt+A`, tick
    `Autostart on login`. Theme: `Spotlight`. Amount of results: `5`.

- [Mongodb Compass](https://docs.mongodb.com/compass/master/install/).
  Connecting to mongodb databases.

- [Postman](https://www.postman.com/)

  ```bash
  sudo snap install postman
  ```

- **Google Chrome**

  ```bash
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

  sudo dpkg -i google-chrome-stable_current_amd64.deb
  ```

- [TablePlus](https://tableplus.com/blog/2019/10/tableplus-linux-installation.html) -
  Management of databases in a simple way.

- [Github Desktop](https://dev.to/rahedmir/is-github-desktop-available-for-gnu-linux-4a69) -
  gui for git/github.

- **Visual Studio Code** -

  ```bash
  sudo snap install --classic code
  ```

  There is a problem with the `Ctrl+shift+e` and `Ctrl+shift+u` bindings being
  overwritten by ubuntu. To fix this in Ubuntu open `Language Support` >
  `Language tab` > select `XIM` in **keyboard input method system** dropdown,
  then **reboot**.

- **Tmux terminal**

  ```bash
  sudo apt update

  sudo apt install tmux

  sudo apt install powerline -y

  # install the powerline fonts
  git clone https://github.com/powerline/fonts.git --depth=1
  cd fonts
  ./install.sh
  cd ..
  rm -rf fonts

  # add the powerline status bar to tmux
  # edit the tmux config file and paste the below lines in it
  vim ~/.tmux.conf

  # enable the powerline status bar
  run-shell 'powerline-config tmux setup'

  # Set tmux mode to vi (default is emac)
  set-window-option -g mode-keys vi
  ```

- [Linux Window Session Manager](https://dev.to/johannesjo/restore-applications-and-their-positions-from-the-command-line-on-linux-desktops-4plk) -
  Saves the layout of windows and manages them with one liner commands. Easy
  Save / Restore session functionality -
  [Github link](https://github.com/johannesjo/linux-window-session-manager)

---

## Custom and default kbd shortcuts I use often

### Custom:

- **Workspaces tip** - for workspaces to span multiple monitors - open gnome
  tweak tools, go to **Workspaces** and set **Display handling** to **Workspaces
  span displays**.
- **Keyboard shortcuts** with 🤖 next to them are set by the
  `dconf-kbd-shortcuts.sh` script from the current directory, upon script
  execution.
- **Switch to workspace 1 🤖** - `Ctrl+Alt+j`. vscode / chrome for localhost
  (set to visible on all workspaces on right monitor)
- **Switch to workspace 2 🤖** - `Ctrl+Alt+k`. terminal / chrome for googling
  around
- **Switch to workspace 3 🤖** - `Ctrl+Alt+l`. gedit / nautilus
- **Switch to workspace 4 🤖** - `Ctrl+Alt+;`. thunderbird for emails
- **Switch to workspace 5 🤖** - `Ctrl+Alt+'` - has to be set using
  `dconf-editor`
- **Move window to workspace 1 🤖** - `Ctrl+Alt+1`
- **Move window to workspace 2 🤖** - `Ctrl+Alt+2`
- **Move window to workspace 3 🤖** - `Ctrl+Alt+3`
- **Move window to workspace 4 🤖** - `Ctrl+Alt+4`
- **Move window to workspace 5 🤖** - `Ctrl+Alt+5`
- **Toggle window on all workspaces or one 🤖** - `Ctrl+Alt+/`
- **Move window 🤖** - `Super+m`
- **Resize window 🤖** - `Super+r` 🤖
- **Switch between windows in the current workspace 🤖** - `Ctrl+Alt+]` and
  `Ctrl+Alt+shift+]` for backwards movement.
- **Albert Launcher** - `Ctrl+Alt+a`
- **Switcher launch** - `Super+w`

### Default:

- **Show workspaces split** - `Super+s`
- **Switch between windows from the same application** - **alt+`**
