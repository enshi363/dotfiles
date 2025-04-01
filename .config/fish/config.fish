if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x pure_enable_container_detetion false

set -x PUB_HOSTED_URL "https://pub.flutter-io.cn"
set -x FLUTTER_STORAGE_BASE_URL "https://storage.flutter-io.cn"


set -U fish_greeting ""
set -x TMUX_TMPDIR $HOME/.config/tmux/tmp


set -x GO111MODULE on
set -x CGO_ENABLED 0
set -x GOPROXY https://goproxy.cn

set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_DEFAULT_OPTS '-m --height 50% --border'

set -x  HOMEBREW_BREW_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
set -x  HOMEBREW_CORE_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
set -x  HOMEBREW_INSTALL_FROM_API 1 

set -Ua fish_user_paths $HOME/go/bin/
set -Ua fish_user_paths /opt/homebrew/bin 

if test -f $HOME/.config/custom.fish
    source $HOME/.config/custom.fish
end
