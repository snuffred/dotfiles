# 🛠️ snuffred's dotfiles

My personal development environment configuration, optimized for macOS with a focus on speed, aesthetics, and a modular Neovim setup.

## 🚀 Highlights

- **Window Manager:** [AeroSpace](https://github.com/nikitabobko/AeroSpace) (i3-like tiling for macOS)
- **Shell:** Zsh managed with [Zinit](https://github.com/zdharma-continuum/zinit) for high-performance plugin loading.
- **Editor:** [Neovim](https://neovim.io/) with a modular `lazy.nvim` configuration.
- **Multiplexer:** Tmux for persistent terminal sessions.

## 📦 Tech Stack

### Languages & Environments

- **Rust:** Managed via `rustup`
- **Julia:** Custom binary paths configured

### Neovim Setup (`nvim/`)

A modular config using `lazy.nvim` featuring:

- **Completion:** `blink.cmp` (Native Rust-powered performance)
- **LSP:** Automatic management via `Mason`
- **Formatting/Linting:** `conform.nvim` and `nvim-lint`
- **UI:** `snacks.nvim` and `trouble.nvim` for a modern interface.
- **Highlighting:** `nvim-treesitter` for robust syntax awareness.

See [nvim/README.md](nvim/README.md) for requirements, layout and keymap prefixes.

## 📥 Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/snuffred/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ```

2.  **Symlink configurations:**
    _Note: Ensure you backup existing files before linking._

    ```bash
    ln -s ~/dotfiles/.zshrc ~/.zshrc
    ln -s ~/dotfiles/nvim ~/.config/nvim
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/.aerospace.toml ~/.aerospace.toml
    ```

3.  **Install dependencies:**
    - Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
    - Install core tools: `brew install nvim tmux aerospace rbenv pyenv ghcup`

## ⌨️ Keybindings

- **Leader Key:** (Check your `keymaps.lua` for the current leader)
- **AeroSpace:** See `.aerospace.toml` for window management shortcuts.
- **IDE Vim:** `.ideavimrc` provides consistent Vim motions in JetBrains IDEs.
