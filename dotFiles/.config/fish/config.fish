function fish_title;end
set BROWSER 'open'

# alias ls 'exa --icons --octal-permissions --group-directories-first --git -lagh'
alias tk 'tokei -e "*.d"'
alias mrsk 'docker run --rm -it -v $HOME/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/:/workdir  ghcr.io/mrsked/mrsk'
alias tailscale '/Applications/Tailscale.app/Contents/MacOS/Tailscale'

set -gx DISABLE_SPRING 1

set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/sbin $PATH

set -gx PATH $HOME/.cargo/bin $PATH
# set -gx PATH /Applications/Postgres.app/Contents/Versions/9.5/bin $PATH
set -gx OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
set -gx NODE_OPTIONS "--max_old_space_size=8192"
set -gx VISUAL "vim"
set -gx EDITOR (which cursor)

set SSL_CERT_FILE "/opt/homebrew/etc/openssl/certs/cert.pem"

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# status --is-interactive; and source (rbenv init -|psub)

# jemalloc configuration for Ruby
set -gx HOMEBREW_PREFIX (brew --prefix)
set -gx LDFLAGS "-L$HOMEBREW_PREFIX/opt/jemalloc/lib"
set -gx CPPFLAGS "-I$HOMEBREW_PREFIX/opt/jemalloc/include"

direnv hook fish | source

# https://stackoverflow.com/a/41054093/10542151
export GPG_TTY=$(tty)
# source "$HOME/.cargo/env"
# test -e {$HOME}/.cargo/env ; and source {$HOME}/.cargo/env

/opt/homebrew/bin/mise activate fish | source
set -U fish_user_paths $HOME/bin $fish_user_paths
# pip --user CLIs (e.g. Cursor Chronicle: cursor-chronicle, search-history)
contains -- $HOME/.local/bin $fish_user_paths; or set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -U fish_user_paths "$HOME/.local/share/mise/shims" $fish_user_paths

# set -gx PATH "$HOME/.local/share/mise/shims" $PATH

alias cat=bat

# Added by Antigravity
fish_add_path /Users/david/.antigravity/antigravity/bin

# Added by Antigravity IDE
fish_add_path /Users/david/.antigravity-ide/antigravity-ide/bin

# Hermes Agent — ensure ~/.local/bin is on PATH
fish_add_path "$HOME/.local/bin"
