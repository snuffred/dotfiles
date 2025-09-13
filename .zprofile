# detect the OS
case "$OSTYPE" in
  darwin*)   OS="macOS" ;;
  linux*)    OS="Linux" ;;
esac

if [[ $OS == "macOS" ]]; then
  # mac 专用配置
  # 例如 Homebrew (Apple Silicon)
  [[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
  # Added by OrbStack: command-line tools and integration
  # Comment this line if you don't want it to be added again.
  source ~/.orbstack/shell/init.zsh 2>/dev/null || :
  # 键位/提示/别名...
elif [[ $OS == "Linux" ]]; then
  # Linux 专用配置
  # 例如 Homebrew (Linuxbrew)
  [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi



export PATH="$HOME/.elan/bin:$PATH"
