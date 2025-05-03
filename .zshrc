# Load Zap plugin manager
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# History Configuration
HISTFILE="$XDG_CACHE_HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt APPENDHISTORY
setopt SHAREHISTORY
setopt INCAPPENDHISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# Load plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-syntax-highlighting"

# Aliases
alias ls="eza -lahoB --group-directories-first --git --git-repos-no-status --no-user"
alias dot="cd ~/.dotfiles"
alias nvimrc="cd ~/.dotfiles/.config/nvim"

# Initialize completions
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/.zcompdump"

# Setup zoxide(cd)
eval "$(zoxide init zsh --cmd cd)"

# Prompt Configuration
eval "$(starship init zsh)"

