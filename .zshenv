# XDG Base Directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Make neovim the default editor.
export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

. "$HOME/.cargo/env"
