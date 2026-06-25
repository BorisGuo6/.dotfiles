
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zprofile.pre.zsh"

export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Skill CLI tools: Homebrew, uv/browser-use local bin, and Go-installed CLIs.
case ":$PATH:" in *":/opt/homebrew/bin:"*) ;; *) export PATH="/opt/homebrew/bin:$PATH";; esac
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH";; esac
case ":$PATH:" in *":$HOME/go/bin:"*) ;; *) export PATH="$HOME/go/bin:$PATH";; esac

# JetBrains Toolbox scripts
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zprofile.post.zsh"
