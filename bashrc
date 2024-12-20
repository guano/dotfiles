# Comment out these lines to control prompt style
export SECTURION_FULL_PROMPT=comment_to_disable
export SECTURION_COLOR_PROMPT=comment_to_disable

# Comment out to disable default Python script
export SECTURION_PYTHON=comment_to_disable

# Comment out this line to disable help message
SECTURION_PRINT_HELP=comment_to_disable

# Use the git prompt script provided with git
USE_GIT_PROMPT=comment_to_disable
# Options to change how the git prompt displays things
GIT_PS1_SHOWDIRTYSTATE=1 #show * for unstaged and + for staged changes
GIT_PS1_SHOWSTASHSTATE=1 #show $ if stash exists
GIT_PS1_SHOWUNTRACKEDFILES=1 #show % is there are untracked files
GIT_PS1_SHOWUPSTREAM="auto" #'auto' or 'verbose' print if HEAD and origin are off
#GIT_PS1_STATESEPARATOR=SP  #if not SP will change character between fields
GIT_PS1_SHOWCOLORHINTS=1 #show colors on state
#GIT_PS1_HIDE_IF_PWD_IGNORED=1 #don't show git prompt if in untracked directory

if [ -n "${SECTURION_PRINT_HELP}" ]; then
   echo "Tips: edit .bashrc to customize your environment."
   echo "* History: commands starting with space will not be preserved between sessions"
   echo "         * duplicate commands will only be preserved once"
   echo "         * directory history can be accessed with 'd' command"
   echo "         * change back to last directory with 'popd' command"
   echo "* Completions: push <TAB> to autocomplete many commands"
if [ -n "${SECTURION_PYTHON}" ]; then
   echo "* Python: type 'hexon' or 'hexoff' to change how numbers are printed"
   echo "        * imports os,sys,re and sleep by default"
fi
   echo "* Emacs: sensible defaults, comment out 'load' command in .emacs to disable"
   echo "* Git: autocomplete for git commands"
   echo "     * useful aliases, see .secturion-environment/secturion.gitconfig for list"
   echo "* scripts: shortcuts for various 'ls' variants, plus extras in "
   echo "           .secturion-environment/scripts"
fi

. ~/.secturion-environment/secturion.bash
source /usr/lib/git-core/git-sh-prompt





# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


source /usr/share/git-core/contrib/completion/git-prompt.sh
# /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh


# https://gist.github.com/Apreche/949791#file-bashrc
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

PATH="~/bin:$PATH"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[0;35m\]$(__git_ps1 " [%s]")\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(__git_ps1 " [%s]")\n\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -lA'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias fixsshsdisplay="export DISPLAY=\"`tmux show-env | sed -n 's/^DISPLAY=//p'`\""

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true





#hopefully run ssh-agent properly?
SSH_ENV="$HOME/.ssh/environment"
function start_agent {
    echo "Initializing new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}
# Source SSH settings if applicable
if [ -f "${SSH_ENV}"]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesnt work under cywgin(sic)
    ps -f | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi







#. /etc/profile.d/modules.sh
. /tools/modules/modules_defaults.sh
module load gcc
module load mentor
module load altera
module load tmux

echo "about to do gitpathbin"
source /tools/modules/gitpath/gitpathbin.sh
echo "done gitpathbin"

# Set vim as default editor. Remember you can [ctrl-x][ctrl-e] to open up the current command in your editor
# https://dev.to/chhajedji/bash-edit-command-in-your-editor-and-execute-directly-30ef
export EDITOR="$(which vim)"

# Learned from https://nickjanetakis.com/blog/fuzzy-search-your-bash-history-in-style-with-fzf
# add fzf search to ctrl-r
# TODO: don't do this if fzf isn't installed
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

fastfetch
#source "$HOME/.cargo/env"
