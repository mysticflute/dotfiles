#!/bin/zsh

# checks that all tools are installed.

NC='\033[0m' # No Color
WHITE='\033[1;37m'
BLACK='\033[0;30m'
BLUE='\033[0;34m'
LIGHT_BLUE='\033[1;34m'
GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
PURPLE='\033[0;35m'
LIGHT_PURPLE='\033[1;35m'
BROWN='\033[0;33m'
YELLOW='\033[1;33m'
GRAY='\033[0;30m'
LIGHT_GRAY='\033[0;37m'

echo "\nChecking ${BLUE}zsh${NC}"
zsh --version

echo "\nfpath:"
print -rl -- $fpath

# for commands that have a --version check
cmds=(
    brew
    git
    node
    npm
    code
)

for cmd in $cmds; do
    echo "\nChecking for ${BLUE}$cmd${NC}"
    if command -v $cmd &> /dev/null; then
        echo "${GREEN}$($cmd --version)${NC}"
    else
        echo "$cmd was ${RED}not found!${NC}"
    fi    
done

