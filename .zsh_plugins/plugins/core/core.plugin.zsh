# General aliases and exports.

### Exports
export EDITOR=nano

### Aliases

# dir traversal
alias ..='cd ..'
alias ...='cd .. ; cd ..'

# ls
# -G or -F are nice to use on macOS, but usually not both:
# -G flag on macOS colorizes output.
# -F flag on macOS displays more characters to indicate file type.
alias ls='ls -G'
alias la='ls -GAh'
alias lla='ls -GAhl'

# removes .DS_Store files
alias clean_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# gets local IP address
alias localip='ipconfig getifaddr en0'

# misc
alias grep='grep --color=auto'
