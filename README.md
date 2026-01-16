# iTerm2 Ultimate Setup

A comprehensive iTerm2 development environment configuration featuring Oh My Zsh, modern CLI tools, and the Dracula theme.

## What's Included

### Applications & Tools
- **iTerm2** - Terminal emulator
- **JetBrains Mono Nerd Font** - Programming font with icon support
- **fzf** - Fuzzy finder for command history and file search
- **thefuck** - Corrects previous console commands
- **bat** - Cat clone with syntax highlighting
- **fnm** - Fast Node.js version manager

### Zsh Configuration
- **Oh My Zsh** - Zsh framework
- **Dracula Theme** - Dark theme for Oh My Zsh
- **zsh-syntax-highlighting** - Command syntax highlighting
- **zsh-autosuggestions** - Command suggestions based on history

### Custom Aliases
- `cat` → `bat` (syntax-highlighted cat)
- `gs` → `git status`
- `ga` → `git add .`
- `gc` → `git commit -m`
- `c` → `code .`
- `..` → `cd ..`
- `fix` → thefuck command correction

## Prerequisites

- macOS (10.15 or later recommended)
- [Homebrew](https://brew.sh/) installed
- Internet connection for downloading packages

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/iterm2-config.git
cd iterm2-config
```

2. Run the installation script:
```bash
chmod +x install.sh
./install.sh
```

3. Restart iTerm2 to apply all changes

## What the Installation Does

1. Installs iTerm2 and required tools via Homebrew
2. Installs Oh My Zsh framework
3. Sets up Dracula theme for Oh My Zsh
4. Installs zsh plugins (syntax highlighting, autosuggestions)
5. Configures fzf integration
6. Backs up your existing `.zshrc`
7. Creates and sources custom configuration from `.zshrc.custom`

## Customization

### Modifying Aliases
Edit the `zshrc.custom` file and add your own aliases:
```bash
alias myalias="my command"
```

### Changing Theme
Edit line 5 in `zshrc.custom`:
```bash
ZSH_THEME="your-theme-name"
```

### Adding More Plugins
Edit line 8 in `zshrc.custom`:
```bash
plugins=(git your-plugin zsh-syntax-highlighting zsh-autosuggestions)
```

## Updating

To update to the latest configuration:
```bash
./update.sh
```

## Uninstalling

To remove this configuration and restore your previous setup:
```bash
./uninstall.sh
```

## Troubleshooting

### Theme not loading
If the Dracula theme doesn't load, ensure the installation script completed successfully. You can manually re-run:
```bash
git clone https://github.com/dracula/zsh.git ~/.oh-my-zsh/custom/themes/dracula
ln -s ~/.oh-my-zsh/custom/themes/dracula/dracula.zsh-theme ~/.oh-my-zsh/custom/themes/dracula.zsh-theme
```

### Plugins not working
Make sure the plugins are properly cloned:
```bash
ls ~/.oh-my-zsh/custom/plugins/
```

### fnm not finding Node.js
Restart your terminal or run:
```bash
source ~/.zshrc
```

## License

MIT License - See [LICENSE](LICENSE) file for details

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements!
