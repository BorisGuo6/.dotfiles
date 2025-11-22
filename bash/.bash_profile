# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.pre.bash"

# Conda
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/boris/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/boris/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/boris/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/boris/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

[[ -f "$HOME/.jetbrains.vmoptions.sh" ]] && . "$HOME/.jetbrains.vmoptions.sh"
. "$HOME/.cargo/env"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.post.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.post.bash"
