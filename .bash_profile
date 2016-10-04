# ~/.bash_profile: executed by bash(1) for login shells.
# 交互式登录时读取，如系统启动，远程登录，使用su切换用户
# User dependent .bash_profile file

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# source the users bashrc if it exists
# Get the aliases and functions
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi
