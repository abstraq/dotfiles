# XDG Base Directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Make neovim the default editor.
export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

# Enable pnpm
export PNPM_HOME="/home/joshw/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

. "$HOME/.cargo/env"
