# load plugins from the default plugins directory, or PLUGINS_HOME if set
plugins_home="${PLUGINS_HOME:-${0:a:h}/plugins}"

# load each plugin listed in the $plugins array, which is set in ~/.zshrc
for plugin in $plugins; do
  if [[ -d "$plugins_home/$plugin" ]]; then
    # load functions and completions
    if [[ -d "$plugins_home/$plugin/functions" ]]; then
      fpath=("$plugins_home/$plugin/functions" $fpath)
      autoload -U $fpath[1]/*(.:t)
    fi
    # load plugin script
    if [[ -f "$plugins_home/$plugin/$plugin.plugin.zsh" ]]; then
      source "$plugins_home/$plugin/$plugin.plugin.zsh"
    fi
  else
    echo "[simple zsh plugins] plugin directory for '$plugin' not found at $plugins_home/$plugin"
  fi
done

unset plugin plugins_home

autoload -U compinit
compinit
