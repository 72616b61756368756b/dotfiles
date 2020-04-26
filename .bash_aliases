#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
for FILE in ${DIR}/scripts/include/{environment,exports,aliases,functions,function_*}.sh; do
  [[ -f "${FILE}" ]] && source "${FILE}"
done
