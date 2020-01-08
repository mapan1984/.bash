### 链接到其他盘的目录
if [ -d /mnt/c/Windows ]; then
  # wsl
  export HARDDISK="/mnt/"
  # windows_user=$(whoami.exe | awk -F '\' '{print $2}')
  windows_user=${WINDOWS_USERNAME:-$(whoami)}
  windows_home="${HARDDISK}c/Users/${windows_user}"
  export CODEDIR="${HARDDISK}""c/Users/""${windows_user}""/Code/"
  export WorkCODEDIR="${HARDDISK}c/Users/${windows_user}/OneDrive/"
  export VimCODEDIR="${HARDDISK}c/Users/${windows_user}/.vim"
else
  # real linux
  export HARDDISK="${HOME}/"
  export CODEDIR="${HARDDISK}Code/"
  export WorkCODEDIR="${HARDDISK}WorkCode/"
  export VimCODEDIR="${HOME}/.vim"
fi

# 常用命令别名
source ~/.bin/alias/alias.sh
# 常用文件地址别名
source ~/.bin/alias/paths.sh

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

source ~/.bin/path/exe.sh

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

# LS_COLORS
#LS_COLORS=$LS_COLORS:'di=0;35:'; export LS_COLORS

