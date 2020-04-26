#!/usr/bin/env bash

for FILE in $HOME/.dotfiles/scripts/include/{environment,exports,aliases}.sh; do
  [[ -f "${FILE}" ]] && source "${FILE}"
done
