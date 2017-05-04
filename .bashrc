#echo enter .bashrc
# ~/.bashrc: executed by bash(1) for non-login shells.
# 当shell是交互式登录和非登录shell时都会运行，如用图形界面打开新终端，使用su切换用户
#                                             如系统启动，远程登录，使用su切换用户
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Source global definitions
if [[ -f /etc/bashrc ]]; then
  source /etc/bashrc
fi

################ Shell Options ########################
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell
#
# check the window size after each command and, if necessary,
# update the values of lines and columns.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

################ Completion options ####################
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
#[[ -f /etc/bash_completion ]] && . /etc/bash_completion
#
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi
#
## Git-Completion for bash
source ${HOME}/bin/git-completion.bash

################ History Options #################
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"
#
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
# HISTCONTROL=ignoreboth
#
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=1000
# HISTFILESIZE=2000

################# Shell show #############
# 终端默认支持256色
export TERM=xterm-256color

# 禁止<c-s>挂起终端，<c-q>恢复终端
stty -ixon
#
# make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
## set variable identifying the chroot you work in (used in the prompt below)
#if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#  debian_chroot=$(cat /etc/debian_chroot)
#fi
#
## set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#  xterm-color) color_prompt=yes;;
#esac
#
## uncomment for a colored prompt, if the terminal has the capability; turned
## off by default to not distract the user: the focus in a terminal window
## should be on the output of commands, not on the prompt
#force_color_prompt=yes
#
#if [ -n "$force_color_prompt" ]; then
#  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#  # We have color support; assume it's compliant with Ecma-48
#  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#  # a case would tend to support setf rather than setaf.)
#    color_prompt=yes
#  else
#    color_prompt=
#  fi
#fi
#
#if [ "$color_prompt" = yes ]; then
#  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#
##unset color_prompt force_color_prompt
#
##If this is an xterm set the title to user@host:dir
#case "$TERM" in
#  xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#  *)
#    ;;
#esac
#
## git prompt
#parse_git_branch() {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#source ${HOME}/bin/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
## \u: username; \h: hostname; \w: path;
#export PS1="\n""\e[1;36m\u\e[0m""@""\e[1;32m\h\e[0m"": ""\e[1;33m\W\e[0m""\e[1;31m\$(__git_ps1 ' (%s)')\e[0m""\n""$ "
source ${HOME}/bin/prompt.sh

################# Aliases #################
#
## Some people use a different file for aliases
#if [ -f "${HOME}/.bash_aliases" ]; then
#  source "${HOME}/.bash_aliases"
#fi
#
## enable color support of ls and also add handy aliases
# if [ -x /usr/bin/dircolors ]; then
#   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# fi

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                # classify files in colour
alias l='ls -CF'                              #
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias wch='which -a'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color -n'                  # show differences in colour, show num_line
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Interactive operation...
#alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
# Default to human readable figures
alias df='df -h'
alias du='du -h -a'
#
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
#### user specific aliases and functions
#
# 查看函数，-s指定man的section, 2,3指的是Systen Call和Library Function
alias see='man -s2,3'
# 常用操作
alias vi='vim'
# 常用文件地址
alias bin='cd ~/bin'
alias ev='cd ~/.vim/'
#
################ Umask ###############
#
## the default umask is set in /etc/profile; for setting the umask
## for ssh logins, install and configure the libpam-umask package.
#umask 022
## /etc/profile sets 022, removing write perms to group + others.
## Set a more restrictive umask: i.e. no exec perms for others:
#umask 027
## Paranoid: neither group nor others have any perms:
#umask 077

################ Functions ###############
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
### function settitle
settitle() {
  echo -ne "\e]2;$@\a\e]1;$@\a";
}

### function safe_rm
#safe_rm () {
#  # 在~/backup中使用'\rm'删除
#  mv "$@" ~/backup;
#}
#alias rm=safe_rm

### function cd_func
# This function defines a 'cd' replacement function capable of keeping,
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
cd_func() {
  local x2 the_new_dir adir index
  local -i cnt

  if [[ $1 ==  "--" ]]; then
    dirs -v
    return 0
  fi

  the_new_dir=$1
  [[ -z $1 ]] && the_new_dir=$HOME

  if [[ ${the_new_dir:0:1} == '-' ]]; then
    #
    # Extract dir N from dirs
    index=${the_new_dir:1}
    [[ -z $index ]] && index=1
    adir=$(dirs +$index)
    [[ -z $adir ]] && return 1
    the_new_dir=$adir
  fi

  #
  # '~' has to be substituted by ${HOME}
  [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"

  #
  # Now change to the new dir and add to the top of the stack
  pushd "${the_new_dir}" > /dev/null
  [[ $? -ne 0 ]] && return 1
  the_new_dir=$(pwd)

  #
  # Trim down everything beyond 11th entry
  popd -n +11 2>/dev/null 1>/dev/null

  #
  # Remove any other occurence of this dir, skipping the top of the stack
  for ((cnt=1; cnt <= 10; cnt++)); do
    x2=$(dirs +${cnt} 2>/dev/null)
    [[ $? -ne 0 ]] && return 0
    [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
    if [[ "${x2}" == "${the_new_dir}" ]]; then
      popd -n +$cnt 2>/dev/null 1>/dev/null
      cnt=cnt-1
    fi
  done

  return 0
}

alias cd=cd_func

#############
# if [ -d /cygdrive ]; then
#   source ~/bin/cygwin.sh;
# elif [ -d /mnt ]; then
#   source ~/bin/wsl.sh;
# else
#   source ~/bin/msys.sh;
# fi

un=$(uname)

if [[ ${un} =~ CYGWIN_NT-[\d.]* ]]; then
  # cygwin
  source ~/bin/cygwin.sh;
elif [[ ${un} =~ Linux ]]; then
  # wsl
  source ~/bin/wsl.sh;
elif [[ ${un} =~ MINGW(64|32)_NT-[\d.]* ]]; then
  # msys
  source ~/bin/msys.sh;
else
  echo no match
fi
#echo exit .bashrc
