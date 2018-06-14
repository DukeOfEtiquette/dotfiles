alias c='clear'
alias la='ls -a'
alias ll='ls -l'
alias p='cd ~/Documents/projects'
alias ap='cd ~/Documents/apprenti/cohort01_061118'
alias d='cd ~/Desktop'
alias do='cd ~/Documents'
alias retm='tmux source-file ~/.tmux.conf'  #Reload tmux config file after change
alias tmux='TERM=screen-256color-bce tmux'
alias vim='/usr/local/bin/vim' # Use brew installed vim
alias dcp='~/.everc/dotfiles/tmuxSessions/dev-cpp'
alias fs='~/.everc/dotfiles/tmuxSessions/flip-server'
alias mysql='/usr/local/mysql/bin/mysql -u root -p'
alias chrome='open -a "Google Chrome"'
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias arduino='./Applications/Arduino.app/Contents/MacOS/Arduino'
alias sshrp='ssh -l pi proxy8.yoics.net -p 32808'
alias ho='heroku open'
alias g='git status'

# Coloring for ls
export CLICOLOR=1
export LSCOLORS=dxFxBxDxCxegedabagacad
alias ls='ls -Gh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

