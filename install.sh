#!/usr/bin/env bash

# Dotfiles installation script using GNU Stow
# Usage: ./install.sh [package1] [package2] ...
# Example: ./install.sh kitty tmux
# Without arguments: installs all packages

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

# Available packages
PACKAGES=(kitty tmux zsh nvim lazygit)

# Color output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}==> Dotfiles Installation${NC}"
echo

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo -e "${RED}Error: GNU Stow is not installed${NC}"
    echo "Install it with: brew install stow"
    exit 1
fi

# Determine which packages to install
if [ $# -eq 0 ]; then
    # No arguments: install all packages
    INSTALL_PACKAGES=("${PACKAGES[@]}")
    echo -e "${BLUE}Installing all packages...${NC}"
else
    # Install specified packages
    INSTALL_PACKAGES=("$@")
    echo -e "${BLUE}Installing packages: ${INSTALL_PACKAGES[*]}${NC}"
fi

# Initialize nvim submodule if nvim is being installed
if [[ " ${INSTALL_PACKAGES[*]} " =~ " nvim " ]]; then
    echo -e "${BLUE}==> Initializing nvim submodule...${NC}"
    git submodule update --init --recursive nvim/.config/nvim
fi

# Install each package with stow
for package in "${INSTALL_PACKAGES[@]}"; do
    if [ -d "$package" ]; then
        echo -e "${GREEN}✓${NC} Stowing $package"
        stow "$package"
    else
        echo -e "${RED}✗${NC} Package '$package' not found"
    fi
done

echo
echo -e "${GREEN}==> Installation complete!${NC}"
echo
echo "Installed packages can be uninstalled with:"
echo "  stow -D <package>"
echo
echo "Example: stow -D kitty"
