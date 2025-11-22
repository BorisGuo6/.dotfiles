# Dotfiles

- Managed with Dotbot. One-click deploy: `make install` (or `./install`) from this directory.
- Secrets are not checked in; put private exports (e.g. API keys) in `~/.secrets.env`, which is sourced by `~/.zshrc` if present.
- Current symlink targets: zsh (`.zshrc`, `.zprofile`, `.zshenv`, `.p10k.zsh`), bash (`.bash_profile`, `.bashrc`, `.profile`), git (`.gitconfig`, `.gitignore_global`, `.gitflow_export`, `.stCommitMsg`), Vim (`.vimrc`), `~/.local/bin/env`, Cargo (`.cargo/env`, `.cargo/config.toml`), and misc tool configs (`.condarc`, `.hgignore_global`, `.inputrc`, `.iterm2_shell_integration.zsh`, `.jetbrains.vmoptions.sh`, `.config/neofetch/config.conf`, `.config/craft/config.toml`, `.config/gh/config.yml`, `.config/gh/hosts.yml`, `.config/comtool/config.json`, `.warp/keybindings.yaml`).
- Backups of the pre-migration dotfiles are in `~/Downloads/HomeArchive-20240717/dotfiles-20251122/` (with old bak files under `legacy-backups/`).
