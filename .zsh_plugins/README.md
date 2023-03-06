# Simple ZSH Plugins

A simple method for creating and loading plugins in zsh. Similar to Oh My Zsh but less bloat.

## Usage

1.  Copy this directory (`.zsh_plugins`) to `~`.

2.  Create a `plugins` array in the `~/.zshrc` file (create this file if doesn't exist). In the array specify the list of plugins to enable, where each name is one of the directories in the `plugins` folder. For example:

    ```zsh
    plugins=(
        core
        hist
        dev
        git
        npm
        vscode
        dotfiles
    )
    ```

    The directory containing the plugins can be changed by exporting `PLUGINS_HOME`.

3.  Source the `simple_zsh_plugins.zsh` script in the `~/.zshrc` file, after the `plugins` array:

```sh
source ~/.zsh_plugins/simple_zsh_plugins.zsh
```

### Adding New Plugins

1. Create a directory with the plugin name within the plugins directory.
2. Add aliases, exports, etc. to a `name.plugin.zsh` script file.
3. Add functions to lazy load and completion scripts within the functions sub-directory.
4. Add the name of the plugin to the `plugins` array in `~/.zshrc`.
5. Reload the terminal window.

### Using External Plugins

Some third-party plugins compatible with Oh My Zsh should also work. Just clone/copy the plugin into the plugins directory, and add the directory name to the `plugins` array in `~/.zshrc`.
