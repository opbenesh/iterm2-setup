#!/bin/bash

echo "Updating iTerm2 configuration..."

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Pull latest changes from git
echo "Pulling latest changes from repository..."
cd "$SCRIPT_DIR"
git pull origin main || git pull origin master

# Update Homebrew packages
echo "Updating Homebrew packages..."
brew upgrade iterm2 fzf thefuck bat fnm 2>/dev/null || echo "Some packages may already be up to date"

# Update Oh My Zsh
echo "Updating Oh My Zsh..."
if [ -d "$HOME/.oh-my-zsh" ]; then
    cd ~/.oh-my-zsh && git pull
    cd "$SCRIPT_DIR"
fi

# Update plugins
echo "Updating zsh plugins..."
if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && git pull
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git pull
fi

# Update Dracula theme
echo "Updating Dracula theme..."
if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula" ]; then
    cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula && git pull
fi

cd "$SCRIPT_DIR"

# Update custom config file
echo "Updating custom configuration..."
cp zshrc.custom ~/.zshrc.custom

echo ""
echo "Update complete!"
echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes."
