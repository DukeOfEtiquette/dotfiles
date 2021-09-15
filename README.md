# dotfiles

## Set up new machine

Take the following steps to set up a new machine from scratch:

1. [Start here](#start-here) (install Linux OS and desktop environment)
1. [Install standard debian packages](#standard-debian-package-installs)
1. [Install shell](#install-shell)
1. [Download/install Dotfiles project](#install-dotfiles)
1. [Download/install additional tools](#additional-tools) not available in `apt`
1. [Review tips 'n' tricks](#useful-linux-tips-n-tricks)

   - **NOTE:** You may want to checkout any `onetimeInstalls.sh` scripts found in a profile

### Start here

[Lubuntu+i3wm tutorial](https://feeblenerd.blogspot.com/2016/08/walkthrough-for-lubuntu-with-i3-tiling.html)


### Standard debian package installs

$ `sudo apt update && sudo apt install git git-lfs cifs-utils arandr xfce4-terminal xclip maim flameshot xdotool pavucontrol bat tmux`

  - **xfce4-terminal** terminal emulator of choice

  - **arandr** GUI for resolution/display configurations (generates xrandr commands)

  - **cifs-utils** required to mount drives in Berkeley

  - **xclip** allows CLI to clipboard selections, useful copying stdout

  - **maim** screenshots

  - **flameshot** screenshoots as well

  - **xdotool** programmatically simulate keyboard input and mouse activity

  - **pavucontrol** graphical volume control

  - **bat** better than cat

  - **tmux** terminal multiplexer

### Install shell

1. Follow instructions on [zsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

1. Follow instructions on [ohmyzsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)

$ `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

---
**NOTE**

For a new $USER, you must run the oh-my-zsh install!
---

### Install dotfiles

1. $ `git clone https://github.com/DukeOfEtiquette/dotfiles.git && cd dotfiles`

1. $ `mkdir -p ~/screenshots`
   - Review `$HOME/.config/i3/config`, there are system bindings for taking screenshots

1. Install [.dircolors](https://github.com/trapd00r/LS_COLORS#installation)

   - $ `mkdir /tmp/LS_COLORS && curl -L https://api.github.com/repos/trapd00r/LS_COLORS/tarball/master | tar xzf - --directory=/tmp/LS_COLORS --strip=1 && ( cd /tmp/LS_COLORS && sh install.sh )`
   - You may want to checkout any `onetimeInstalls.sh` scripts found in a profile

1. Verify `installDotfiles` is setup properly and run: `./installDotfiles`

## Additional Tools

### Chrome

[Chrome](https://www.google.com/chrome/)

### VSCode

[VSCode](https://code.visualstudio.com/download)

**Turn on Settings Sync!**

### Slack

[Slack](https://linuxize.com/post/how-to-install-slack-on-ubuntu-18-04/)

### Docker

[docker](https://github.com/docker/docker-install)

**RUN THIS** `sudo usermod -aG docker $USER`

**Logout after adding user to the docker group**

### Node

[nvm](https://github.com/nvm-sh/nvm)

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`

### Dunst

Custom notification window (comes with Lubuntu)

[Dunst](https://dunst-project.org/documentation/)

## Useful Linux tips 'n' tricks

### Create linux user

1. Create the user: `sudo adduser <newuser>`

1. Add to sudo group: `sudo usermod -a -G sudo <newuser>`

1. Logout of current user

1. Login to new user

1. Use default i3wm settings

### Rename linux user

1. Update user's name: `sudo usermod -l <new-user-name> <old-user-name>`

1. Update user's group name: `sudo groupmod --new-name <new-group-name> <old-group-name>`

### Get wifi device name for i3status

`iw dev | grep "Interface" | awk -F ' ' '{print $2}'`

### Connect to wifi with NetworkManager TUI

`nmtui`