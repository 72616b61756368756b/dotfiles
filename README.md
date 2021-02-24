# dotfiles

# Disclaimer:
The project is offered “as-is”, without warranty, and disclaiming liability for damages resulting from using it. 

# Requirements

* [Zsh](https://www.zsh.org/)
* [Oh My ZSH!](https://ohmyz.sh/)
* [GNU Make](https://www.gnu.org/software/make/)

# Install
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/rakauchuk/dotfiles/master/install.sh)"
```

## Additional completion definitions for Zsh.

* Clone the repository inside your oh-my-zsh repo:
```zsh
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```
* Enable it in your `.zshrc` by adding it to your plugin list and reloading the completion:
```
plugins=(… zsh-completions)
autoload -U compinit && compinit
```

## Fish-like fast/unobtrusive autosuggestions for Zsh

Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

```zsh
plugins=(zsh-autosuggestions)
```
## Fish shell-like syntax highlighting for Zsh

Clone this repository in oh-my-zsh's plugins directory:
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Activate the plugin in `~/.zshrc`:
```zsh
plugins=( [plugins...] zsh-syntax-highlighting)
```


## A Zsh prompt for Astronauts (denysdovhan/spaceship-prompt)
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

```zsh
git clone https://github.com/powerline/fonts.git --depth=1 && \
cd fonts && \
./install.sh && \
cd .. && \
rm -rf fonts
```
