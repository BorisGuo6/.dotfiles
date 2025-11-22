# Dotfiles

- Managed with Dotbot (`./install` from this directory).
- Secrets are not checked in; put private exports (e.g. API keys) in `~/.secrets.env`, which is sourced by `~/.zshrc` if present.
- Current symlink targets: zsh (`.zshrc`, `.zprofile`, `.zshenv`, `.p10k.zsh`), bash (`.bash_profile`, `.bashrc`, `.profile`), git (`.gitconfig`, `.gitignore_global`, `.gitflow_export`, `.stCommitMsg`), Vim (`.vimrc`), and `~/.local/bin/env`.
- Backups of the pre-migration dotfiles are in `~/Downloads/HomeArchive-20240717/dotfiles-20251122/` (with old bak files under `legacy-backups/`).
