# scripts
export PATH=$PATH:$HOME/scripts
# vscode
export PATH=$PATH:'/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
export GIT_CLONE_PATH=$HOME/projects/github.com/nekoshita

alias ll="ls -lah"
alias syncdots="sync_dots"
alias synczsh=". sync_zsh"
alias unlink=". unlink"
alias cdrepo=". change_dir_to_repo"

# docker alias
alias d="docker"
alias dc="docker-compose"
alias dct="docker container"
alias dctr="docker_delete_all_containers"
alias di="docker image"
alias dir="docker_delete_all_images"
alias dv="docker volume"
alias dvr="docker_delete_all_volumes"
alias cloudsqlproxy="docker_run_cloud_sql_proxy"

# kubectl alias
alias k="kubectl"

# gcloud alias
alias g="gcloud"

eval "$(starship init zsh)"

# path
UNAME_MACHINE="$(/usr/bin/uname -m)"
if [[ "${UNAME_MACHINE}" == "arm64" ]]; then
    # On ARM macOS
    HOMEBREW_PREFIX="/opt/homebrew"
else
    # On Intel macOS
    HOMEBREW_PREFIX="/usr/local"
fi

eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
source "$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
source "$HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source $(brew --prefix asdf)/asdf.sh
