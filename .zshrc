# Add Homebrew to PATH (important for macOS)
/opt/homebrew/bin/brew shellenv

# Python PATH
export PATH="/usr/local/bin:$PATH"

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias python="python3"
alias pip="pip3"

# Enable autocomplete
autoload -U compinit && compinit

# Prompt theme (optional)
export ZSH_THEME="robbyrussell"
