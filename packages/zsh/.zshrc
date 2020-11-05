export PATH=$PATH:$HOME/scripts
export GIT_CLONE_PATH=$HOME/projects/github.com/nekoshita

alias ll="ls -lah"
alias synczsh=". synczsh"
alias cdrepo=". cdrepo"
alias lscmd="ls ~/scripts"

# docker alias
alias d="docker"
alias dc="docker-compose"
alias dct="docker container"
alias dctrm="doify 'delete all docker containers?' docker container rm -f `docker container ls -a -q`"
alias di="docker image"
alias dirm="doify 'delete all docker images?' docker image rm -f `docker image ls -a -q`"
alias dv="docker volume"
alias dvrm="doify 'delete all docker volumes?' docker volume rm `docker volume ls -q`"

eval "$(starship init zsh)"

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

eval "$(anyenv init -)"
