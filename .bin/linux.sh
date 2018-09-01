### 链接到其他盘的目录
if [ -d /mnt/c/Windows ]; then
  # wsl
  export HARDDISK='/mnt/'
  export CODEDIR="${HARDDISK}c/Users/mapan/Code/"
else
  # real linux
  export HARDDISK="${HOME}/"
  export CODEDIR="${HARDDISK}Code/"
fi

# 简化命令
alias tgz='tar zxvf'
alias nhm='nethack -u mapan'
alias install='sudo apt install'

# 使用代理
alias go='http_proxy=http://127.0.0.1:1080 https_proxy=http://127.0.0.1:1080 no_proxy=localhost,127.0.0.0/8,::1 go'

# 常用文件地址别名
source ~/.bin/paths.sh;

### delete `/mnt/*` form PATH
#oldIFS=$IFS
#IFS=:
#
#oldPATH=$PATH
#PATH=''
#for path in ${oldPATH}; do
#  if [[ ${path} =~ ^/[^m].*$ ]]; then
#    PATH+="${path};"
#  fi
#done
#
#IFS=$oldIFS
#
#PATH=${PATH//;/:}
#PATH=${PATH%%:}
#echo $PATH

# Setup for go if it exists
if [ -d /usr/local/go ]; then
  export GOROOT="/usr/local/go"
  export PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "${CODEDIR}goutils" ]; then
  export GOPATH="${CODEDIR}goutils"
  if [ -d "${CODEDIR}goutils/bin" ]; then
    export PATH="${CODEDIR}goutils/bin:$PATH"
  fi
fi

if [ -d "${CODEDIR}gowork" ]; then
  export GOPATH="${GOPATH}:${CODEDIR}gowork"
  alias cdg="cd ${CODEDIR}gowork/src"
fi

# Setup for nodejs
if [ -d /usr/local/node ]; then
  export PATH="/usr/local/node/bin:$PATH"
fi

# Java HOME
if [ -d /usr/local/java ]; then
  export JAVA_HOME=/usr/local/java
  export PATH=$JAVA_HOME/bin:$PATH
fi

# Maven
if [ -d /usr/local/maven ]; then
  export PATH="/usr/local/maven/bin:$PATH"
fi

# protocal buf
if [ -d /usr/local/protoc ]; then
  export PATH="/usr/local/protoc/bin:$PATH"
fi

# gradle
if [ -d /opt/gradle/gradle-4.9 ]; then
  export PATH=$PATH:/opt/gradle/gradle-4.9/bin
fi

# sbt
if [ -d /usr/local/sbt ]; then
  export PATH="/usr/local/sbt/bin:$PATH"
fi
# scala
if [ -d /usr/local/scala ]; then
  export PATH="/usr/local/scala/bin:$PATH"
fi


### Use tmux
#[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
#    [[ -n "$ATTACH_ONLY" ]] && {
#        tmux a 2>/dev/null || {
#            cd && exec tmux
#        }
#        exit
#    }
#
#    tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
#    exec tmux
#}
###


# fzf
if [ -s "$HOME/.bin/bash_completion" ]; then
  source "$HOME/.bin/bash_completion"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

# LS_COLORS
#LS_COLORS=$LS_COLORS:'di=0;35:'; export LS_COLORS

