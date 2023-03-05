#!/bin/zsh

# copies dotfiles to the home directory.

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

source_path=""${0:a:h}"/dotfiles"
dest_path=$HOME

for dotfile in $source_path/*; do
  name="$(basename "${dotfile}")"
  dest="$dest_path/.$name"

  echo "\ncopying $name to $dest"

  if [[ -f "$dest" ]]; then
    echo "Warning! ${YELLOW}$dest${NC} already exists."
    read -q "response?Backup existing file and copy anyway? [Yy/n] "
    echo
    if [[ "$response" =~ ^[Yy]$ ]]; then
      current_time=$(date "+%Y-%m-%d_%H-%M-%S")
      backup="$dest-backup-$current_time"
      echo "moving existing file to $backup"
      mv $dest $backup
      cp $dotfile $dest
      echo "${GREEN}done${NC}"
    else
      echo ">>> skipping $name"
    fi
  else
    cp $dotfile $dest
    echo "${GREEN}done${NC}"
  fi
done
