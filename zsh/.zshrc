# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Powerlevel10k instant prompt should stay near the top for minimal latency.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

path_prepend() { case ":${PATH}:" in *":$1:"*) ;; *) PATH="$1:${PATH}";; esac }
path_append() { case ":${PATH}:" in *":$1:"*) ;; *) PATH="${PATH}:$1";; esac }

path_prepend "/usr/local/bin"
path_prepend "$HOME/bin"
path_prepend "$HOME/.local/bin"

# Homebrew environment
if command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
fi

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git fast-syntax-highlighting vscode sudo fzf-tab)
source "$ZSH/oh-my-zsh.sh"
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# Tooling paths
path_append "$HOME/Documents/arm-gnu-toolchain-12.2/bin"
path_append "/opt/homebrew/opt/qt@5/bin"
path_append "/opt/homebrew/opt/bison/bin"
path_append "/opt/homebrew/opt/curl/bin"
path_append "/opt/homebrew/opt/unzip/bin"
path_append "$HOME/.spicetify"
path_append "$HOME/.tiup/bin"

alias lvim="$HOME/.local/bin/lvim"
alias ll="ls -lh"
alias la="ls -A"
alias lla="la -l"
alias gs="git status"
alias gc="git commit"
alias v="vim"
alias sl=ls
alias mv="mv -i"
alias mkdir="mkdir -p"
alias df="df -h"
alias pip="uv pip"

[[ -f "$HOME/.jetbrains.vmoptions.sh" ]] && source "$HOME/.jetbrains.vmoptions.sh"
if command -v brew >/dev/null 2>&1; then
  source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
[[ -f /opt/homebrew/etc/profile.d/autojump.sh ]] && . /opt/homebrew/etc/profile.d/autojump.sh
[[ -f "$HOME/.iterm2_shell_integration.zsh" ]] && source "$HOME/.iterm2_shell_integration.zsh"

# Conda
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/boris/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/boris/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/boris/miniconda3/etc/profile.d/conda.sh"
    else
        path_prepend "/Users/boris/miniconda3/bin"
    fi
fi
unset __conda_setup

# Nix
if [ -e /nix/var/nix/profiles/default/etc/profile.d/nix.sh ]; then . /nix/var/nix/profiles/default/etc/profile.d/nix.sh; fi

# ngrok completion
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

export LDFLAGS="-L/opt/homebrew/opt/curl/lib -L/opt/homebrew/opt/dartsim@6.10.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include -I/opt/homebrew/opt/dartsim@6.10.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig:/opt/homebrew/opt/dartsim@6.10.0/lib/pkgconfig"

[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"
[[ -f "$HOME/.secrets.env" ]] && source "$HOME/.secrets.env"

export PATH
