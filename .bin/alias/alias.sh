# 登录 nethack
alias nhm='nethack -u mapan'
# 安装软件
alias install='sudo apt install'
# 为go使用代理
alias go='http_proxy=http://127.0.0.1:1080 https_proxy=http://127.0.0.1:1080 no_proxy=localhost,127.0.0.0/8,::1 go'
# 解压
alias untar='tar -zxvf'
# 下载中断恢复
alias wget='wget -c'
# 生成 20 个字符的随机密码
alias getpass='openssl rand -base64 20'
# sha256
alias sha='shasum -a 256'
# 文件夹服务
#alias www='python -m SimpleHTTPServer 8000'
alias www='python -m http.server 8000'
# 网络测速
alias speed='speedtest-cli --server 2406 --simple'
# 外部 IP
alias ipe='curl ipinfo.io/ip'
# 本地 IP
alias ipi='ipconfig getifaddr en0'

mcd() {
  mkdir -p "$1";
  cd "$1" || return;
}

cls() {
  cd "$1" || return;
  ls;
}

backup() { cp "$1"{,.bak};}

md5() {
  md5sum "$1" | grep "$2";
}

# alias ll='ls -lht' #按修改时间逆序列出文件
# alias la='ls -lhta' #按修改时间逆序列出所有文件
# alias size='f(){ du -sh $1* | sort -hr; }; f'
# alias sek='f(){ find / -name $1; }; f' # 在根目录查找文件
# alias sekc='f(){ find ./ -name $1; }; f'
# alias portopen='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j ACCEPT; }; f'
# alias portclose='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j DROP; }; f'
# alias www='f(){ python -m SimpleHTTPServer $1; }; f'
# alias auto='systemctl list-unit-files --type=service | grep enabled | more'
# alias now='date "+%Y-%m-%d %H:%M:%S"'
# alias dkrnet='docker stats --no-stream | sort -k8 -hr | more'
# alias untar='tar xvf '
# alias unjar='jar xvf '
# alias ipe='curl ipinfo.io/ip'
