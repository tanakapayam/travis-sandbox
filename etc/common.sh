#!/usr/bin/env bash
#
# common bash settiings


# name of calling script in banner form
# ==============
# calling script
# ==============
banner() {
  set +o xtrace

  local -r title="${1:-}"

  printf '\n%s\n# %s\n%s\n\n' \
    "$(printf '#%.0s' {1..79})" \
    "${title}" \
    "$(printf '#%.0s' {1..79})"

  set -o xtrace
}
declare -rf banner

banner "${BASH_SOURCE[1]}"


# http://tldp.org/LDP/abs/html/options.html
set -o xtrace
set -o errexit
set -o nounset
set -o pipefail

# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s expand_aliases

# aliases
if [[ "$(whoami)" == 'travis' ]]; then
  alias sudo='sudo -E'
else
  alias sudo=''
fi
