#!/bin/bash

# Fig pre block. Keep at the top of this file.
# export PATH="${PATH}:${HOME}/.local/bin"
# eval "$(fig init bash pre)"


export PATH="/opt/homebrew/sbin:$PATH"
export SSL_CERT_FILE="/opt/homebrew/etc/openssl/certs/cert.pem"
# export JAVA_HOME=$(/usr/libexec/java_home)

### Added by the Heroku Toolbelt
export PATH="/opt/homebrew/heroku/bin:$PATH"
export NODE_OPTIONS="--max_old_space_size=8192"

# OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Fig post block. Keep at the bottom of this file.
#

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. /opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash

export EDITOR="code --wait"
. "$HOME/.cargo/env"
