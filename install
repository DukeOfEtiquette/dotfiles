#!/bin/bash
############################
# ./installDotfiles
#
# This script will apply version control to all system settings, apply the most recent changes to the system, and create backups of all files/directories before running. All paths are intended to be absolute allowing you to run from anywhere.
############################

# where will the dotfiles backup live?
personal_dir=.everc

# dotfiles directory
dotfile_dir=$HOME/$personal_dir/dotfiles

# dotfiles backup directory
backup_olddir=$HOME/$personal_dir/dotfiles_bck

##########
# This function creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
function backup_homedir () {
  printf "### STARTING $HOME/ BACKUP ###\n"

  # list of files/folders to symlink in homedir
  # These files live at root of directory of backup project
  files="profile vimrc tmux.conf zshrc" #notice no dots in front, get added later

  # create dotfiles_old in homedir
  printf "Creating $backup_olddir for backup of any existing dotfiles in ~"
  mkdir -p $backup_olddir/home
  printf "...done\n\n"

  # change to the dotfiles directory
  printf "Changing to the $dotfile_dir directory"
  cd $dotfile_dir
  printf "...done\n\n"

  # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
  for file in $files; do
      printf "Moving $HOME/.$file to $backup_olddir/home"
      mv $HOME/.$file $backup_olddir/home
      printf "Creating symlink to $file in home directory.\n\n"
      ln -s $dotfile_dir/home/$file $HOME/.$file
  done

  # install backup script
  #printf "Make sure you are BACKING UP yer data!\n"
  #backup_script_dest=/usr/local/sbin/backup_linux.sh
  #rm $backup_script_dest
  #ln -s $dotfile_dir/backup_linux.sh $backup_script_dest
}

# This function is responsible for backing up any oh-my-zsh themes
function backup_omz () {
  printf "### STARTING OMZ BACKUP ###\n\n"

  # make backup of OMZ themes
  mkdir -p $backup_olddir/omz_themes

  # MOVE everything that is a theme to backup location
  mv $HOME/.oh-my-zsh/themes/*.zsh-theme $backup_olddir/omz_themes/

  # copy target OMZ themes to system
  cp $dotfile_dir/omz_themes/* $HOME/.oh-my-zsh/themes/
}

# This function is responsible for backing up any i3 system configs
function backup_i3config () {
  printf "### STARTING i3 CONFIG BACKUP ###\n\n"

  mkdir -p $backup_olddir/.config/i3
  mkdir -p $backup_olddir/.config/i3status

  # MOVE anything in system .config that starts with 'i3' to backup
  mv $HOME/.config/i3/config $backup_olddir/.config/i3/
  mv $HOME/.config/i3status/config $backup_olddir/.config/i3status/

  # copy these Linux i3 .config to system
  cp -r $dotfile_dir/.config/i3/* $HOME/.config/i3/
  cp -r $dotfile_dir/.config/i3status/* $HOME/.config/i3status/
}

# This function is responsible for backing up the dunst configuration file
function backup_dunst () {
  printf "### STARTING DUNST BACKUP ###\n\n"

  # backup current config
  mkdir -p $backup_olddir/.config/dunst
  cp -r $HOME/.config/dunst $backup_olddir/.config/

  # install new config
  cp -r $dotfile_dir/.config/dunst/* $HOME/.config/dunst/
}

# This function is responsible for backing up any custom installed fonts
function backup_fonts () {
  printf "### STARTING FONT BACKUP ###\n\n"

  mkdir -p $backup_olddir/.fonts

  # MOVE any TTF in system .fonts
  mv $HOME/.fonts/*.ttf $backup_olddir/.fonts/

  # copy these Linux .font
  mkdir -p $HOME/.fonts/
  cp -r $dotfile_dir/.fonts/*.ttf $HOME/.fonts/
}

# This function is responsible for backing up XFCE terminal config
function backup_terminal () {
  printf "### STARTING xfce4-terminal BACKUP ###\n\n"

  mkdir -p $backup_olddir/.config/xfce4/terminal

  # MOVE anything in system .config that starts with 'i3' to backup
  mv $HOME/.config/xfce4/terminal/terminalrc $backup_olddir/.config/xfce4/terminal/terminalrc

  # copy these Linux i3 .config to system
  cp $dotfile_dir/.config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/
}

function backup_home_bin () {
  printf "### STARTING $HOME/bin BACKUP ###\n\n"

  mkdir -p $backup_olddir/bin

  # MOVE anything in $HOME/bin to backup/bin
  cp -ar $HOME/bin $backup_olddir/

  # copy these ./bin files to $HOME/bin
  cp -ar $dotfile_dir/bin $HOME/
}

# This function controls what backup functions are run
function backup_all () {
  backup_homedir
  backup_omz
  backup_i3config
  backup_dunst
  backup_fonts
  backup_terminal
  backup_home_bin

  notify-send -t 2000 "dotfile backup" "backup complete"
}

# entry point
backup_all

printf "### BACKUP COMPLETE ###\n"
