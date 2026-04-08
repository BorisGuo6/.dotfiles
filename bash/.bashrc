
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/bashrc.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/bashrc.pre.bash"

export OPENSSL_ROOT_DIR="/opt/homebrew/opt/openssl@3"
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"



# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/bashrc.post.bash" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/bashrc.post.bash"
