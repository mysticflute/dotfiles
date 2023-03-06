# General aliases and exports.

### Exports
export EDITOR=nano

### Aliases
# dir traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -' # "-" to go back to previous dir

# zsh
alias zshedit="$EDITOR $HOME/.zshrc"
alias zshsource="source $HOME/.zshrc"

# ls
# -G or -F are nice to use on macOS, but usually not both:
# -G flag on macOS colorizes output.
# -F flag on macOS displays more characters to indicate file type.
alias l='ls'
alias ls='ls -Gh'
alias la='ls -GAh'
alias lla='ls -GAhl'

# removes .DS_Store files
alias clean_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# gets local IP address
alias localip='ipconfig getifaddr en0'
alias myip='curl http://ipecho.net/plain; echo'

# misc
alias c='clear'
alias grep='grep --color=auto'

### Options
# Try to correct the spelling of all arguments in a line.
# setopt correct_all
