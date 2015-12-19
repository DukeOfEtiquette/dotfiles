alias osu='ssh duquetta@access.engr.oregonstate.edu' #ssh command for Flip
alias c='clear'
alias la='ls -a' #Quick command to show hidden files as well
alias ll='ls -l'
alias p='pwd' #I'm lazy
alias h='cd ~'  #Quickly get home
alias retm='tmux source-file ~/.tmux.conf'  #Reload tmux config file after change
alias tmux='TERM=screen-256color-bce tmux'
alias vim='/usr/local/bin/vim' # Use brew installed vim
alias dev-cpp='/Users/DenaeDuQuette/dotfiles/tmuxSessions/dev-cpp'
alias flip-server='/Users/DenaeDuQuette/dotfiles/tmuxSessions/flip-server'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Coloring for ls
export CLICOLOR=1
export LSCOLORS=dxFxBxDxCxegedabagacad
alias ls='ls -Gh'
