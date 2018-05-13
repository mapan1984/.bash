# ~/.bash_profile: executed by bash(1) for login shells.
# User dependent .bash_profile file

# Source the users bashrc if it exists
# Get the aliases and functions
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# User specific environment and startup programs
if [ -d "${HOME}/.bin" ] ; then
  PATH="${PATH}:${HOME}/.bin"
fi

# Python global pip install package
if [ -d "${HOME}/.local/bin" ] ; then
  PATH="${PATH}:${HOME}/.local/bin"
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi
