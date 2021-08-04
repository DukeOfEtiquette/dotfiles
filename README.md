# dotfiles

## Resources

[Xubuntu+i3wm tutorial](http://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html)

[Dunst](https://dunst-project.org/documentation/)

## Create linux user

1. `sudo useradd -m <newuser>`

1. `sudo usermod -aG <newuser>`

1. `sudo passwd <newuser>`

1. Logout of current user.

1. Login to new user.

1. User default i3wm settings <esc>

## Install zsh + ohmyzsh

Follow instructions on [ohmyzsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)

## Install dotfiles

1. `mkdir -p ~/.config/i3status`

1. `touch ~/.config/i3status/config`

TODO: investigate why above two are required

1. `mkdir </path/to/dir> && $_`

1. `git clone git@github.com:DukeOfEtiquette/dotfiles.git && cd dotfiles`

1. Install [.dircolors](https://github.com/trapd00r/LS_COLORS#installation)

1. Verify `installDotfiles` is setup properly and run:

1. `sudo ./installDotfiles`

1. Apply shell config: `source ~/.zshrc`

## Additional Tools

### VSCode

[VSCode](https://code.visualstudio.com/download)

### Slack

[Slack](https://linuxize.com/post/how-to-install-slack-on-ubuntu-18-04/)

### xclip

This allows CLI to clipboard selections, useful copying stdout

`sudo apt update && sudo apt install xclip`

### Screenshots

In `~/.config/i3/config` there are system bindings for taking screenshots using two tools that need to be manually downloaded - maim xdotool:

`sudo apt update && sudo apt install main xdotool && mkdir ~/screenshots`

[Flameshot](https://github.com/lupoDharkael/flameshot#debian) can be userful as well.

### Node

[nvm](https://github.com/nvm-sh/nvm)

### Docker

[docker](https://github.com/docker/docker-install)

`sudo usermod -aG docker ${USER}`

Logout after adding user to the docker group.

### tmux

[tmux](https://linuxize.com/post/getting-started-with-tmux/)
