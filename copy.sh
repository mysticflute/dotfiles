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

base_path="${0:a:h}" # current directory
dest_path=$HOME

function copy_path() {
  local src=$1  # path of file or directory to copy
  local dest=$2 # copy to this path
  local name="$(basename "${src}")"

  echo "copying $name to $dest"

  local response
  local exists=false
  if [[ -f "$dest" ]]; then
    exists=true
    echo "Warning! ${YELLOW}$dest${NC} already exists."
    read -q "response?Backup existing file and copy anyway? [Yy/n] "
    echo
  elif [[ -d "$dest" ]]; then
    exists=true
    echo "Warning! ${YELLOW}$dest${NC} already exists."
    read -q "response?Backup existing directory and copy anyway? [Yy/n] "
    echo
  fi

  if [[ "$exists" = true ]]; then
    if [[ "$response" =~ ^[Yy]$ ]]; then
      current_time=$(date "+%Y-%m-%d_%H-%M-%S")
      backup="$dest-backup-$current_time"
      echo "moving existing file to $backup"
      mv $dest $backup
      cp -R $src $dest
      echo "${GREEN}done${NC}"
    else
      echo ">>> skipping $name"
    fi
  else
    cp -R $src $dest
    echo "${GREEN}done${NC}"
  fi

  echo
}

# copy dotfiles
for dotfile in $base_path/dotfiles/*; do
  dotfile_name="$(basename "${dotfile}")"
  copy_path "$dotfile" "$dest_path/.$dotfile_name"
done

# copy simple zsh plugins
copy_path "$base_path/.zsh_plugins" "$dest_path/.zsh_plugins"

echo "Note: Some changes may require restarting the terminal."
