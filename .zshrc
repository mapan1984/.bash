# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin

# Path to your oh-my-zsh installation.
export ZSH=/home/mapan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##### user specific aliases and functions
#
# 查看函数，-s指定man的section, 2,3指的是Systen Call和Library Function
alias see='man -s2,3'
# 常用操作
alias install='sudo apt-get install'
alias vi='vim'
alias tgz='tar zxvf'
# 解决jekyll在bash on windows上的启动错误
alias jserver='jekyll server --force_polling'
# 常用文件地址
alias bin='cd ~/bin'
alias ev='cd ~/.vim/'
alias c='cd /mnt/c'
alias e='cd /mnt/e'
alias d='cd /mnt/d'
alias f='cd /mnt/f'
alias bg='cd /mnt/d/mapan1984/'

# 设置文件默认用vim打开
alias -s c=vim
alias -s py=vim
alias -s js=vim
alias -s md=vim
alias -s html=vim
alias -s css=vim
alias -s txt=vim
# 打开压缩文件
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
## Git-Completion
#source ~/bin/git-completion.zsh
#
## Git-Prompt
#setopt prompt_subst
#source ~/bin/git-prompt.sh
#export RPROMPT=$'$(__git_ps1 "%s")'

## 禁止<c-s>挂起终端，<c-q>恢复终端
stty -ixon

## Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
