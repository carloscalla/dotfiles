# dotfiles

Personal configuration files managed with GNU Stow.

## Quick Start

### 1. Install GNU Stow

```bash
brew install stow
```

### 2. Clone this repository

```bash
git clone --recursive git@github.com:carloscalla/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 3. Install dotfiles

**Install everything:**
```bash
./install.sh
```

**Install specific packages:**
```bash
./install.sh kitty tmux zsh
```

**Manual installation with stow:**
```bash
stow kitty    # Install only kitty config
stow tmux     # Install only tmux config
stow zsh      # Install only zsh config
stow nvim     # Install only nvim config
stow lazygit  # Install only lazygit config
```

## Available Packages

- **kitty** - Terminal emulator configuration
- **tmux** - Terminal multiplexer configuration
- **zsh** - Shell configuration (includes oh-my-zsh setup)
- **nvim** - Neovim configuration (git submodule: kickstart.nvim)
- **lazygit** - Git TUI configuration (themes, pagers, editor)

## Uninstalling

Remove symlinks for a specific package:

```bash
stow -D kitty
```

## Structure

Each package follows GNU Stow conventions:

```
dotfiles/
├── kitty/
│   └── .config/kitty/
├── tmux/
│   └── .config/tmux/
├── zsh/
│   └── .zshrc
├── nvim/
│   └── .config/nvim/  (git submodule)
├── lazygit/
│   └── .config/lazygit/
└── install.sh
```

## Private Configurations

Machine-specific configurations (tokens, work aliases, etc.) should be added to `~/.privaterc`, which is automatically sourced by `.zshrc` if it exists.
