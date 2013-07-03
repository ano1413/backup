# Set up the prompt

# autoload -Uz promptinit
# promptinit # prompt adam1 


# compinit added
autoload -U compinit
compinit
autoload -U colors 
colors

# set bash compatible complete command
 autoload bashcompinit
 bashcompinit

setopt NO_BEEP
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


LISTMAX=0

alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias svim='sudo vim'
alias df='df -kTh'
alias rm='rm -Iv'
alias mv='mv -v'
alias ..='cd ..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias xterm='xterm -fa Inconsolata -fn 10x20 -geometry 130x40'
alias o='xdg-open'
alias sl='sublime-text'

# Check public IP Address
alias cmyip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"


extract(){
if [[ -f $1 ]]; then
    	case $1 in 
		*.tar.bz2) tar xjvf $1 ;;
		*.tar.gz) tar xzvf $1 ;;
		*.bz2) bunzip2 $1 ;;
		*.rar) rar x $1;;
		*.gz) gunzip $1;;
		*.tar) tar xvf $1;;
		*.tbz2) tar xjvf $1;;
		*.tgz) tar xzvf $1;;
		*.zip) unzip $1;;
	esac
else 
	echo "'$1' is not a valid file"
fi
}

#o(){
#if [[ -f $1 ]]; then
#	case $1 in
#		*.pdf) okular $1& ;;
#		*.avi) vlc $1& ;;
#		*.wmv) vlc $1& ;;
#		*.mpg) vlc $1& ;;
#		*.mov) vlc $1& ;;
#		*.mkv) vlc $1& ;;
#	esac
#else 
#	echo "'$1' is not a valid file"
#fi
#}

# Export classpath
export CLASSPATH=/home/nguyen/libs/jars/

PATH="$PATH:/home/nguyen/jython2.7b1/bin:/usr/share/scala/bin"


# PROMPT='%d%>:%{\e[0m}' # default prompt
# RPROMPT="%{$fg[green]%}[%T on %D{%b. %d, %y}]%{$reset_color%}" # prompt for right side of screen
# 
# Set Git branch in prompt
#

 PROMPT="%{$fg_bold[magenta]%}$ %{$reset_color%}"
 RPROMPT="%{$fg_bold[magenta]%}[%~]%{$reset_color%}" # prompt for right side of screen



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# load completion for rvm
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# complete -C rails-complete -o default rails
# source ~/.rvm/rails.bash
# fpath=(~/.zsh/Completion $fpath)
#


