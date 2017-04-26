### 链接到其他盘的目录
export BREAK='/mnt/'

alias install='sudo apt-get install'
alias tgz='tar zxvf'
# 解决jekyll在bash on windows上的启动错误
alias jserver='jekyll server --force_polling'
# 常用文件地址
alias bg='cd /mnt/d/mapan1984/'
alias c='cd /mnt/c'
alias e='cd /mnt/e'
alias d='cd /mnt/d'
alias f='cd /mnt/f'

### delete `/mnt/*` form PATH
oldIFS=$IFS
IFS=:

oldPATH=$PATH
PATH=''
for path in ${oldPATH}; do
  if [[ ${path} =~ ^/[^m].*$ ]]; then
    PATH+="${path};"
  fi
done

IFS=$oldIFS

PATH=${PATH//;/:}
PATH=${PATH%%:}
#echo $PATH

