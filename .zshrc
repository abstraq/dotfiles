PS1="%F{blue}%~ %(?.%F{green}.%F{red})%#%f "

# Use neovim as the default editor.
export EDITOR="nvim"

# Shortcut for opening neovim.
alias nv="nvim"

# Use bat as a replacement for the 'cat' command.
alias cat="bat -p"

# Use eza as a replacement for the 'ls' command.
alias ls="eza -lahoB --group-directories-first --git --git-repos-no-status --no-user"

# History Configuration
HISTFILE="$HOME/.local/share/.zsh_history"
HISTFILESIZE=10000000
HISTSIZE=1000000
SAVEHIST=1000000

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.

# Load platform-specific settings.
if [[ $(uname) == "Darwin" ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
elif [[ $(uname) == "Linux" ]]; then
	source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# Source cargo installed binaries.
source "$HOME/.cargo/env"

# Use zoxide as a replacement for the 'cd' command.
eval "$(zoxide init zsh)"
