# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wezm"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# !!!!!! PERSONAL SHIT !!!!!! probably breaking something

# NOTE: edit the true dotfiles, not symlinks or copies
alias i3c='vim ~/.everc/dotfiles/.config/i3/config'
alias i3s='vim ~/.everc/dotfiles/.config/i3status/config'
alias vz='vim ~/.everc/dotfiles/zshrc'
export DOTFILES="$HOME/.everc/dotfiles"
alias dot="cd $DOTFILES"
export PATH="$DOTFILES/installDotfiles:$PATH"

# veldus stuffs
export VELDUS="$HOME/Documents/projects/veldus"
export VELDUS_WIKI_SRC="$VELDUS/veldus_sphinx"
export SPHINX_VELDUS_EXT_SRC="$VELDUS/sphinx_veldus_ext"
export SPHINX_VELDUS_THEME_SRC="$VELDUS/sphinx_veldus_theme"

alias vel="cd $VELDUS && code . && ls"

# mmmmm sexy colors, https://github.com/trapd00r/LS_COLORS#installation
# eval $( dircolors -b $HOME/.dircolors )
. "$HOME/.local/share/lscolors.sh"

# ******************************************************************
# reboot directly to windows
#   Inspired by http://askubuntu.com/questions/18170/how-to-reboot-into-windows-from-ubuntu
# ******************************************************************
function rebootwindows() {
    WINDOWS_TITLE=`grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2`
    sudo grub-reboot "$WINDOWS_TITLE"
    sudo reboot
    echo $WINDOWS_TITLE
}

# ENV Config
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#environment-setup
# export PATH="/usr/local/cuda-10.2/bin:/usr/local/cuda-10.2/NsightCompute-2019.1${PATH:+:${PATH}}"

# start nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# jekyll - Install Ruby Gems to ~/gems
#export GEM_HOME="$HOME/gems"
#export PATH="$HOME/gems/bin:$PATH"

# ENV config
export EDITOR='/usr/bin/code'

# QoL
alias c="clear"
alias o='mimeopen'
alias t='xfce4-terminal'
alias chrome='google-chrome'
alias py='python3'
alias python='python3'
alias pip='pip3'
alias ypic='xclip -selection clipboard  -t image/png -i'
alias volctl='pavucontrol'
alias mongostart='sudo service mongod start'
alias mongostop='sudo service mongod stop'
alias mongorestart='sudo service mongod restart'
alias killbig='killall flameshot zoom slack chrome code xfce4-terminal'
alias lnp="cd $HOME/bin/LinuxLNP-0.43.05-r07"
alias ssh-lurch='ssh lurch@192.168.1.16'
  

# git
alias gs="git status"
alias gac="git commit -am"

# ******************************************************************
# TS3D Specifics
# ******************************************************************

# ENV Config
## conan
export PATH="$HOME/.local/bin:$PATH"

## doxygen
export DOXYGEN_VERSION="doxygen-1.8.14"
export DOXYGEN_DIR="$HOME/bin/$DOXYGEN_VERSION"

## qt-creator
alias qt="$HOME/Qt5.12.7/Tools/QtCreator/bin/qtcreator &"

## ts3d specific locations
export TS3D="$HOME/ts3d"
export TS3D_BIN="$TS3D/bin" # helper scripts
export TS3D_MODELS="$TS3D/models"
export TS3D_HOOPS_LICENSE="$TS3D/hoops_license.txt"

## repo locations
export TS3D_REPOS="$TS3D/src"
export TS3D_HOOPS_REPOS="$TS3D_REPOS/hoops"
export TS3D_COM_REPO="$TS3D_HOOPS_REPOS/communicator"
export TS3D_VIS_REPO="$TS3D_HOOPS_REPOS/visualize"
export TS3D_LEARN_REPOS="$TS3D_REPOS/learning"
export TS3D_TUT_BABA="$TS3D/workspace/communicator/basic_app"
export TS3D_HWV_BIN="$TS3D_COM_REPO/applications/client/hoops_web_viewer/js"

## PATH
export PATH="$HOME/bin/$DOXYGEN_VERSION/bin:$PATH" # control system install doxygen
export PATH="$HOME/bin/p4v-2020.1.1966006/bin:$PATH" # perforce client
export PATH="$TS3D_BIN:$PATH"

# VPN shiz
alias gp='globalprotect'
alias gp-details='globalprotect show --details'
alias gp-berk='globalprotect connect -portal vpn2.techsoft3d.com'
alias gpd='globalprotect disconnect'


# ez navigation
alias src="cd $TS3D_REPOS"
alias com="cd $TS3D_COM_REPO"
alias vis="cd $TS3D_VIS_REPO"
alias gss="cd $TS3D_LEARN_REPOS/global_search_stager"
alias baba="cd $TS3D_TUT_BABA"

# build helpers
alias com-bld-stg='build-com-docs && stage-com-docs'
alias serve-com="live-server $TS3D_COM_REPO/documentation"

# QoL
alias start_server="bash $HOME/HOOPS/communicator/installed/2019_SP2_U1/HOOPS_Communicator_2019_SP2_U1/quick_start/start_server.sh"
alias xlic="cat $TS3D_HOOPS_LICENSE | xclip -sel c"
alias ssh-little='ssh -t www-data@little.ts3d.lan "cd /raid/www/docs-test/communicator ; bash"' # dev deploys happen on little

