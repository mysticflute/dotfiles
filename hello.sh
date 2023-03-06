# Outputs helpful tips and reminders after getting setup

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

echo "reminder: type ${YELLOW}alias${NC} to see the list of all aliases."
echo
echo "tip: ${YELLOW}cd${NC} by itself will bring you back to home directory."
echo "tip: use the ${BLUE}up${NC} and ${BLUE}down${NC} arrow keys to repeat previous commands."
echo "tip: ${YELLOW}ls | grep search${NC} will filter matches to the search string."
echo "tip: ${BLUE}ctrl+a${NC} and ${BLUE}ctrl+e${NC} to go to the start or end of the line."
echo "tip: ${BLUE}ctrl+w${NC} to delete one word."
echo "tip: ${BLUE}ctrl+u${NC} to delete from the cursor to beginning of line."
echo "tip: ${BLUE}ctrl+k${NC} to delete from the cursor to end of line."
echo
echo "try: ${YELLOW}dirs${NC}, ${YELLOW}pushd (directory)${NC} and ${YELLOW}popd${NC} for traversal."
echo
echo "core plugin: cd to a directory just by typing its name."
echo "core plugin: go back to previous directory with ${YELLOW}-${NC}."
echo "core plugin: type ${YELLOW}c${NC} to clear the terminal window."
echo
echo "dev plugin: cd to a dev project with ${YELLOW}dev (directory)${NC}."
echo
echo "git plugin: ${YELLOW}g${NC} for ${PURPLE}git${NC}"
echo "git plugin: ${YELLOW}gs${NC} for ${PURPLE}git status${NC}"
echo "git plugin: ${YELLOW}gcob (branch)${NC} for ${PURPLE}git checkout -b${NC}"
echo "git plugin: ${YELLOW}gcam (message)${NC} for ${PURPLE}git commit -am${NC}"
echo
echo "npm plugin: ${YELLOW}ni${NC} for ${PURPLE}npm install${NC}"
echo "git plugin: ${YELLOW}nrb${NC} for ${PURPLE}npm run build${NC}"
echo "git plugin: ${YELLOW}nrd${NC} for ${PURPLE}npm run dev${NC}"
echo "git plugin: ${YELLOW}nrt${NC} for ${PURPLE}npm run test${NC}"
echo
echo "vscode plugin: ${YELLOW}vsc${NC} for ${PURPLE}code .${NC}"
echo "vscode plugin: ${YELLOW}vsca (directory)${NC} for ${PURPLE}code --add${NC}"
echo "vscode plugin: ${YELLOW}vscn (file/directory)${NC} for ${PURPLE}vscode --new-window${NC}"
