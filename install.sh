# 1. Apps, CLI Tools, and Fonts
brew install --cask iterm2
brew install --cask font-jetbrains-mono-nerd-font
brew install fzf thefuck bat fnm

# 2. Oh My Zsh & Plugins
# Install Oh My Zsh if not already present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Dracula theme for Oh My Zsh
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula" ]; then
  git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula
  ln -sf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula/dracula.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula.zsh-theme
fi

# Clone plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null

# 3. fzf setup
$(brew --prefix)/opt/fzf/install --all

# 4. Configure .zshrc
# Backup existing .zshrc
cp ~/.zshrc ~/.zshrc.bak

# Copy custom zsh config
cp zshrc.custom ~/.zshrc.custom

# Add sourcing to .zshrc
echo "\n# Source custom zsh config\nif [ -f ~/.zshrc.custom ]; then\n    source ~/.zshrc.custom\nfi" >> ~/.zshrc

echo "Ultimate Setup Complete! Please restart iTerm2 to apply changes."
