# dotfiles

# Disclaimer:
The project is offered “as-is”, without warranty, and disclaiming liability for damages resulting from using it. 

# Install
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/rakauchuk/dotfiles/master/install.sh)"
```

# A Zsh prompt for Astronauts (denysdovhan/spaceship-prompt)
Clone this repo:
```zsh
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
```
Symlink `spaceship.zsh-theme` to your oh-my-zsh custom themes directory:
```zsh
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
```
Set `ZSH_THEME="spaceship"` in your `.zshrc`.
```

# Hosts
* [Unified hosts file with base extensions](https://github.com/StevenBlack/hosts)

# Colors

* [Retro groove color scheme for Vim](https://github.com/morhetz/gruvbox)
* [Ports of the gruvbox colorscheme](https://github.com/morhetz/gruvbox-contrib)

# Fonts

```bash
git clone https://github.com/powerline/fonts.git --depth=1 && \
cd fonts && \
./install.sh && \
cd .. && \
rm -rf fonts
```

# Tools

* [Zsh](https://www.zsh.org/)
* [Oh My ZSH!](https://ohmyz.sh/)
* [GNU Make](https://www.gnu.org/software/make/)
