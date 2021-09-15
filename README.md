# dotfiles

## Start here

[Lubuntu+i3wm tutorial](https://feeblenerd.blogspot.com/2016/08/walkthrough-for-lubuntu-with-i3-tiling.html)

## Create linux user

1. `sudo useradd -m <newuser>`

1. `sudo usermod -aG <newuser>`

1. `sudo passwd <newuser>`

1. Logout of current user

1. Login to new user

1. Use default i3wm settings

## Install zsh + ohmyzsh

Follow instructions on [ohmyzsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)

## Install dotfiles

1. Install [.dircolors](https://github.com/trapd00r/LS_COLORS#installation)

1. `git clone git@github.com:DukeOfEtiquette/dotfiles.git && cd dotfiles`

1. Verify `installDotfiles` is setup properly and run:

1. `sudo ./installDotfiles`

### Screenshots

1. `mkdir -p ~/screenshots`

Review `$HOME/.config/i3/config`, there are system bindings for taking screenshots

## Additional Tools

### debian installs

`sudo apt update && sudo apt install git git-lfs cifs-utils arandr xfce4-terminal xclip maim flameshot xdotool pavucontrol bat tmux`

**xfce4-terminal** terminal emulator of choice

**arandr** GUI for resolution/display configurations (generates xrandr commands)

**cifs-utils** required to mount drives in Berkeley

**xclip** allows CLI to clipboard selections, useful copying stdout

**maim** screenshots

**flameshot** screenshoots as well

**xdotool** programmatically simulate keyboard input and mouse activity

**pavucontrol** graphical volume control

**bat** better than cat

**tmux** terminal multiplexer

### Chrome

[Chrome](https://www.google.com/chrome/)

### VSCode

[VSCode](https://code.visualstudio.com/download)

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