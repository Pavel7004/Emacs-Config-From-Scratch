zstyle :compinstall filename '/home/pavel/.zshrc'

autoload -Uz compinit
compinit

# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

###### zplug ######
source ~/.zplug/init.zsh    #init file

# packages #
# ---
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
# --- 

zplug load                  #enable packages
###################

# syntax highlighting
#####################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#####################

###### aliases ######
# ls aliases
alias ls='lsd -F'
alias ll='ls -l'
alias la='ll -a'
alias lt='ls --tree'

# git aliases
alias gst='git status'
alias gadd='git add'
alias gpush='git push'
alias gpull='git pull'
#####################

##### enviroment variables #####
export EDITOR="emacs -nw"
