# $HOME/.kshrc
#
# ksh interactive shell script

# use nvim if it's installed, vi otherwise
case "$(command -v nvim)" in
  */nvim) EDITOR=/usr/local/bin/nvim ;;
  *)      EDITOR=/usr/bin/vi   ;;
esac

export EDITOR
export FCEDIT=$EDITOR
export PAGER=/usr/bin/less
#export LESS='-iMRS -x2'
#export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

# Append /usr/games to PATH
PATH=$PATH:/usr/games

# Append own binary and scripts dir
MY_PROGS_DIR=/home/richie/.local/bin
MY_SCRIPTS_DIR=/home/richie/.local/scripts
PATH=$PATH:$MY_PROGS_DIR:$MY_SCRIPTS_DIR

# use vi mode
set -o vi

# use colorls if it's installed, plain old ls otherwise
#if command -v colorls > /dev/null ; then
#  LS='colorls'
#else
#  LS='ls'
#fi

alias ll='ls -lhF'
alias la='ls -AF'
alias ..='cd ..'
#alias ...='cd ...'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias weather='curl http://wttr.in/Surabaya'
#command -v neomutt > /dev/null && alias mutt='neomutt'
alias snvim="doas nvim"
alias svi="doas vi"

# nice colored prompt that also sets xterm title
_XTERM_TITLE='\[\033]0;\u@\h:\W\007\]'
_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
_PS1_MAGENTA='\[\033[35m\]'
case "$(id -u)" in
  0) _PS1_COLOR='\[\033[1;31m\]' ;; # red
  *) _PS1_COLOR='\[\033[32m\]'   ;; # green
esac
PS1='$_XTERM_TITLE$_PS1_COLOR\u$_PS1_CLEAR@$_PS1_MAGENTA\h$_PS1_CLEAR$_PS1_CLEAR:$_PS1_BLUE\W$_PS1_CLEAR\n$_PS1_COLOR\$$_PS1_CLEAR '
