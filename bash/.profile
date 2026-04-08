
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/profile.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/profile.pre.bash"

[[ -f "$HOME/.jetbrains.vmoptions.sh" ]] && . "$HOME/.jetbrains.vmoptions.sh"
. "$HOME/.cargo/env"
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"



# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/profile.post.bash" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/profile.post.bash"
