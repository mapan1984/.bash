### 链接到其他盘的目录
if [ -d /mnt/c/ ]; then
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
fi

# Setup for nodejs
if [ -d /usr/local/node ]; then
  export PATH="/usr/local/node/bin:$PATH"
fi

### Use tmux
[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
    [[ -n "$ATTACH_ONLY" ]] && {
        tmux a 2>/dev/null || {
            cd && exec tmux
        }
        exit
    }

    tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
    exec tmux
}
###
