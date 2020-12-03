# dotfiles

## Resources

[Xubuntu+i3wm tutorial](http://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html)

[VSCode](https://code.visualstudio.com/download)

[Slack](https://linuxize.com/post/how-to-install-slack-on-ubuntu-18-04/)

## Create linux user

`sudo useradd -m newuser`

`sudo usermod -aG newuser`

`sudo passwd newuser`

Logout of current user.

Login to new user.

User default i3wm settings <esc>

## Install zsh + ohmyzsh

Follow instructions on [ohmyzsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)

## Install dotfiles

`mkdir -p ~/.config/i3status`

`touch ~/.config/i3status/config`

TODO: investigate why above two are required

`mkdir personal-dir-name && $_`

`git clone git@github.com:DukeOfEtiquette/dotfiles.git && cd dotfiles`

Install [.dircolors](https://github.com/trapd00r/LS_COLORS#installation)

Verify `installDotfiles` is setup properly and run:

`sudo ./installDotfiles`

Apply shell config:

`source ~/.zshrc`

## Additional Tools

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
