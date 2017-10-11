# Color
NORMAL="\e[0m"
   RED="\e[1;31m"
 GREEN="\e[1;32m"
  BLUE="\e[1;34m"
YELLOW="\e[1;33m"
  CYAN="\e[1;36m"
 WHITE="\e[1;37m"

NEWLINE="\n"


# Python virtualenv prompt
set_python_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`] "
  fi
}


# User at Host
USER="\u"
HOST="\h"
USER_AT_HOST="${CYAN}${USER}${NORMAL}@${GREEN}${HOST}"


# Previous command state
SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
get_pervious_state() {
  if test $1 -eq 0 ; then
    PREVIOUS_STATE="${SMILEY}"
  else
    PREVIOUS_STATE="${FROWNY}"
  fi
}


# Full path
FULL_PATH="${YELLOW}\w"


# Git state
source ${HOME}/bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
GIT_STATE="${RED}\`__git_ps1 ' (%s)'\`${NORMAL}"


### Bash prompt
set_bash_prompt () {
  # Get previous command state
  get_pervious_state $?

  # Set the PYTHON_VIRTUALENV variable.
  set_python_virtualenv

  # Set the bash prompt variable.
  export PS1="${NEWLINE}${PYTHON_VIRTUALENV}${USER_AT_HOST} ${PREVIOUS_STATE} ${FULL_PATH} ${GIT_STATE} ${NEWLINE}$ "
}


# Tell bash to execute this function just before displaying its prompt.
PROMPT_COMMAND=set_bash_prompt

