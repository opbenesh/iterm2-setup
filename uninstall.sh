#!/bin/bash

echo "Starting uninstall process..."

# Remove custom zsh config
if [ -f ~/.zshrc.custom ]; then
    echo "Removing ~/.zshrc.custom..."
    rm ~/.zshrc.custom
fi

# Restore backup .zshrc if it exists
if [ -f ~/.zshrc.bak ]; then
    echo "Restoring ~/.zshrc from backup..."
    mv ~/.zshrc.bak ~/.zshrc
    echo "Original .zshrc restored"
else
    echo "No backup .zshrc found. You may need to manually edit ~/.zshrc"
    echo "Look for the section that sources ~/.zshrc.custom and remove it"
fi

# Optional: Remove plugins (uncomment if you want to remove them)
# echo "Removing custom plugins..."
# rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Optional: Remove Dracula theme (uncomment if you want to remove it)
# echo "Removing Dracula theme..."
# rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula

echo ""
echo "Uninstall complete!"
echo ""
echo "Note: The following were NOT removed (uncomment lines in script to remove):"
echo "  - Oh My Zsh installation"
echo "  - Homebrew packages (iTerm2, fzf, bat, fnm, thefuck, fonts)"
echo "  - Zsh plugins"
echo "  - Dracula theme"
echo ""
echo "Please restart your terminal for changes to take effect."
