alias vi='vim'
alias ..="cd .."
alias ll='ls -lahF'
alias cl='clear'
alias py=python
# https://github.com/sharkdp/fd
alias fd=fdfind

create_dirs() {
  if [ $1 == "java" ]
  then 
    mkdir -p src/{main,test}/java
  fi  
}

export GOPATH=$HOME/go
export PATH=${GOPATH}/bin:${PATH}
