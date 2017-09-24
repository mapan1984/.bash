### 链接到其他盘的目录
export BREAK='/mnt/'

# 简化命令
alias tgz='tar zxvf'
alias install='sudo apt install'

# 解决jekyll在bash on windows上的启动错误
# alias jserver='jekyll server --force_polling'

# 常用文件地址
alias c='cd /mnt/c'
alias e='cd /mnt/e'
alias d='cd /mnt/d'
alias f='cd /mnt/f'
alias bg='cd /mnt/d/mapan1984/'

### delete `/mnt/*` form PATH
# oldIFS=$IFS
# IFS=:
#
# oldPATH=$PATH
# PATH=''
# for path in ${oldPATH}; do
#   if [[ ${path} =~ ^/[^m].*$ ]]; then
#     PATH+="${path};"
#   fi
# done
#
# IFS=$oldIFS
#
# PATH=${PATH//;/:}
# PATH=${PATH%%:}
#echo $PATH

