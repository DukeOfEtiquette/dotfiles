# dotfiles

## System Installs

### Linux

[Xubuntu+i3wm tutorial](http://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html)

[Setup zsh+oh-my-zsh](https://www.howtoforge.com/tutorial/how-to-setup-zsh-and-oh-my-zsh-on-linux/)

[.dircolors](https://github.com/trapd00r/LS_COLORS#installation)

[VSCode](https://code.visualstudio.com/download)

[Slack](https://linuxize.com/post/how-to-install-slack-on-ubuntu-18-04/)

[Evolution Mail Client](https://wiki.gnome.org/Apps/Evolution)

[nvm](https://github.com/nvm-sh/nvm)

[docker](https://github.com/docker/docker-install)

[tmux](https://linuxize.com/post/getting-started-with-tmux/)

## dotfiles Install

Navigate to `personal_dir` and clone repo:

`git clone git@github.com:DukeOfEtiquette/dotfiles.git && cd dotfiles`

Verify `installDotfiles` is setup properly and run:

`./installDotfiles`

Apply shell config:

`source ~/.zshrc`

## Additional Setup

### xclip

This allows CLI to clipboard selections, useful copying stdout

`sudo apt update && sudo apt install xclip`

### Screenshots

In `~/.config/i3/config` there are system bindings for taking screenshots using two tools that need to be manually downloaded - maim xdotool:

`sudo apt update && sudo apt install main xdotool && mkdir ~/screenshots`

