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

# ruby
if [ -d $HOME/gems ]; then
  export GEM_HOME=$HOME/gems
fi

if [ -d $HOME/gems/bin ]; then
  export PATH=$HOME/gems/bin:$PATH
fi

# fzf
if [ -s "$HOME/.bin/bash_completion" ]; then
  source "$HOME/.bin/bash_completion"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

