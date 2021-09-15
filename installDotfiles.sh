#!/bin/bash
############################
# ./installDotfiles
#
# This script will apply version control to all system settings, apply the most recent changes to the system, and create backups of all files/directories before running. All paths are intended to be absolute allowing you to run from anywhere.
############################

# where will the dotfiles backup live?
personal_dir=.everc

HS=$(hostname)
WORK_HOSTNAME="BN-EM-ADAM-P1G2"
PC_HOSTNAME="gomez"

if [ "$HS" = "$WORK_HOSTNAME" ]; then
    profile="ts3d"

    # bash installDotfiles.sh
    # sh bin/ts3d/startup_ts3d.sh
elif [ "$HS" = "$PC_HOSTNAME" ]; then
    profile="gomez"
    # sh bin/gomez/startup_gomez.sh
else
    echo "UNKNOWN MACHINE - cannot determine appropriate profile to install"
    exit 1
fi

# dotfiles directory
dotfile_dir=$HOME/$personal_dir/dotfiles/profiles/$profile

# shared dotfiles directory
shared_dotfile_dir=$HOME/$personal_dir/dotfiles/profiles/shared

# dotfiles backup directory
backup_olddir=$HOME/$personal_dir/dotfiles_bck/profiles/$profile

# shared dotfiles directory
shared_backup_dir=$HOME/$personal_dir/dotfiles_bck/profiles/shared

# This function is responsible for backing up any images used for desktop backgrounds
function backup_backgrounds () {
  printf "### STARTING BACKGROUNDS BACKUP ###\n"

  # make backup of backgrounds dir 
  mkdir -p $shared_backup_dir/backgrounds
  mkdir -p $HOME/backgrounds

  # MOVE everything that is a background to backup location
  mv $HOME/backgrounds/* $shared_backup_dir/backgrounds/

  # copy target backgrounds to system
  cp $shared_dotfile_dir/backgrounds/* $HOME/backgrounds
}

# This function is responsible for backing up any oh-my-zsh themes
function backup_omz () {
  printf "### STARTING OMZ BACKUP ###\n"

  # make backup of OMZ themes
  mkdir -p $shared_backup_dir/omz_themes

  # MOVE everything that is a theme to backup location
  cp $HOME/.oh-my-zsh/themes/*.zsh-theme $shared_backup_dir/omz_themes/

  # copy target OMZ themes to system
  cp $shared_dotfile_dir/omz_themes/* $HOME/.oh-my-zsh/themes/
}

##########
# This function creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
function backup_homedir () {
  printf "### STARTING $HOME/ BACKUP ###\n"

  # create dotfiles_old in homedir
  # printf "Creating $backup_olddir/home for backup"
  mkdir -p $backup_olddir/home
  # printf "...done\n\n"

  # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
  for file in $dotfile_dir/home/* ; do
    basename_file="$(basename $file)"

    # printf "Moving $HOME/.$file to $backup_olddir/home \n"
    mv $HOME/.$basename_file $backup_olddir/home
    # printf "Creating symlink to $file in home directory.\n"
    ln -s $file $HOME/.$basename_file
  done
}

# This function is responsible for backing up any i3 system configs
function backup_i3config () {
  printf "### STARTING i3 CONFIG BACKUP ###\n"

  mkdir -p $backup_olddir/.config/i3
  mkdir -p $HOME/.config/i3

  mkdir -p $backup_olddir/.config/i3status
  mkdir -p $HOME/.config/i3status

  # MOVE anything in system .config that starts with 'i3' to backup
  mv $HOME/.config/i3/config $backup_olddir/.config/i3/
  mv $HOME/.config/i3status/config $backup_olddir/.config/i3status/

  # copy these Linux i3 .config to system
  cp -r $dotfile_dir/.config/i3/* $HOME/.config/i3/
  cp -r $dotfile_dir/.config/i3status/* $HOME/.config/i3status/
}

# This function is responsible for backing up the dunst configuration file
function backup_dunst () {
  printf "### STARTING DUNST BACKUP ###\n"

  # backup current config
  mkdir -p $backup_olddir/.config/dunst
  mkdir -p $HOME/.config/dunst

  cp -r $HOME/.config/dunst $backup_olddir/.config/

  # install new config
  cp -r $dotfile_dir/.config/dunst/* $HOME/.config/dunst/
}

# This function is responsible for backing up any custom installed fonts
function backup_fonts () {
  printf "### STARTING FONT BACKUP ###\n"

  mkdir -p $backup_olddir/.fonts
  mkdir -p $HOME/.fonts/

  # MOVE any TTF in system .fonts
  mv $HOME/.fonts/*.ttf $backup_olddir/.fonts/

  # copy these Linux .font
  cp -r $dotfile_dir/.fonts/*.ttf $HOME/.fonts/
}

# This function is responsible for backing up XFCE terminal config
function backup_terminal () {
  printf "### STARTING xfce4-terminal BACKUP ###\n"

  mkdir -p $backup_olddir/.config/xfce4/terminal
  mkdir -p $HOME/.config/xfce4/terminal

  # MOVE anything in system .config that starts with 'i3' to backup
  mv $HOME/.config/xfce4/terminal/terminalrc $backup_olddir/.config/xfce4/terminal/terminalrc

  # copy these Linux i3 .config to system
  cp $dotfile_dir/.config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/
}

function backup_home_bin () {
  printf "### STARTING $HOME/bin BACKUP ###\n"

  mkdir -p $backup_olddir/bin
  mkdir -p $HOME/bin

  # MOVE anything in $HOME/bin to backup/bin
  cp -ar $HOME/bin $backup_olddir/

  # copy these ./bin files to $HOME/bin
  cp -ar $dotfile_dir/bin $HOME/
}

# This function controls what backup functions are run
function backup_all () {
  printf "### BACKUP_ALL STARTING ###\n"

  # shared
  backup_backgrounds
  backup_omz

  # profile-based
  backup_homedir
  backup_i3config
  backup_dunst
  backup_fonts
  backup_terminal
  backup_home_bin

  printf "### BACKUP_ALL COMPLETE ###\n"
}

# entry point
backup_all

# source $HOME/.zshrc

notify-send -t 2000 "dotfile backup" "backup complete"

