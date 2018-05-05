### 链接到其他盘的目录
export HARDDISK='/mnt/'
export CODEDIR="${HARDDISK}c/Users/mapan/Code/"

# 简化命令
alias tgz='tar zxvf'
alias nhm='nethack -u mapan'
alias install='sudo apt install'

# 解决jekyll在bash on windows上的启动错误
# alias jserver='jekyll server --force_polling'

# 常用文件地址别名
source ~/bin/paths.sh;

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

### 默认开启tmux
# [[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
#     [[ -n "$ATTACH_ONLY" ]] && {
#         tmux a 2>/dev/null || {
#             cd && exec tmux
#         }
#         exit
#     }
#
#     tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
#     exec tmux
# }

### go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/mnt/c/Users/mapan/Code/goutils

### nodejs
#export PATH=$PATH:/usr/local/node/bin
#export PATH=$PATH:/home/mapan/.local/bin

### use tmux
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
