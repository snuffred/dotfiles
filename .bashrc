eval "$(starship init bash)"

echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.cernet.edu.cn/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.cernet.edu.cn/rustup' >> ~/.bash_profile

export PATH="$HOME/.cargo/bin:$PATH"
