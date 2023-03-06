# General aliases and exports.

### Exports
export EDITOR=nano

### Aliases
# dir traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -' # "-" to go back to previous dir

# ls
# -G or -F are nice to use on macOS, but usually not both:
# -G flag on macOS colorizes output.
# -F flag on macOS displays more characters to indicate file type.
alias l='ls'
alias ls='ls -Gh'
alias la='ls -GAh'
alias lla='ls -GAhl'

# removes .DS_Store files
alias cleands="find . -name '*.DS_Store' -type f -ls -delete"

# gets local IP address
alias localip='ipconfig getifaddr en0'
alias myip='curl http://ipecho.net/plain; echo'

# zsh
alias ze="$EDITOR $HOME/.zshrc"
alias zr="source $HOME/.zshrc"
alias zshedit="$EDITOR $HOME/.zshrc"
alias zshreload="source $HOME/.zshrc"

# misc
alias c='clear'
alias grep='grep --color=auto'

### Options
setopt correct_all # try to correct the spelling of all arguments in a line.
setopt auto_cd # cd to a dir by just typing its name.
# setopt auto_pushd # make cd push the old directory onto the directory stack.
# setopt pushd_ignore_dups # don’t push dupes of dirs onto the directory stack.
# setopt pushd_minus # exchanges meaning of +/- when used to specify a dir in the stack.
# setopt pushd_to_home # have pushd with no arguments act like 'pushd $HOME'.
# setopt pushd_silent # do not print the directory stack after pushd or popd.