# Fig pre block. Keep at the top of this file.
# export PATH="${PATH}:${HOME}/.local/bin"
# eval "$(fig init bash pre)"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Fig post block. Keep at the bottom of this file.
#

# https://stackoverflow.com/a/41054093/10542151
export GPG_TTY=$(tty)


export PATH="/opt/homebrew/opt/icu4c/bin:/Users/david/.yarn/bin:/Users/david/.local/bin:/Users/david/.fig/bin:/opt/homebrew/sbin:/opt/homebrew/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/opt/homebrew/sbin:/opt/homebrew/bin"
. "$HOME/.cargo/env"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export EDITOR=/usr/local/bin/cursor

export PATH="$HOME/.local/share/mise/shims:$PATH"
eval "$(mise activate bash)"
