NORMAL="\e[0m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
CYAN="\e[1;36m"
WHITE="\e[1;37m"

USER="\u"
HOST="\h"
NEWLINE="\n"
PATH_="\w"

SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

source ${HOME}/bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="${NEWLINE}${CYAN}${USER}${NORMAL}@${GREEN}${HOST} \`${SELECT}\` ${YELLOW}${PATH_}${RED}\$(__git_ps1 ' (%s)')${NORMAL}${NEWLINE}$ "
