# Directory navigation
alias ..='cd ..'
alias ~='cd ~'

# ls with color output, human-readable file sizes, and file type indicators
alias l='ls -GF'
alias ll='ls -lGhF'
alias la='ls -AGhF'

# Homebrew with specified user
alias brew='sudo -Hu USERNAME_PLACEHOLDER brew'

# Git shortcuts
alias g='git'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'
alias gco='git checkout'

# Grep with color highlighting
alias grep='grep --color=auto'

# Cat replacement with syntax highlighting (requires bat to be installed)
alias cat='bat'

# Clear terminal screen
alias c='clear'

# Homebrew package update and upgrade
alias brewup='brew update && brew upgrade'

# Open Finder in the current directory
alias finder='open .'
