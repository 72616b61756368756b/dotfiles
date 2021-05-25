#!/usr/bin/env bash

set -eo pipefail

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-completions" ]]; then
    git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
fi

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [[ ! -d "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" ]]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/spaceship-prompt" --depth=1
    ln -s "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme" 
fi

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
