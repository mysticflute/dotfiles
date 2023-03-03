# Nathan's Dotfiles

Bootstrap a new machine with configuration and installation of various tools and apps.

## Applications

Install these apps manually:

- Xcode (from the App Store)
- [Google Chrome](https://www.google.com/chrome/)
- [Visual Studio Code](https://code.visualstudio.com)
- [GPG Suite](https://gpgtools.org)

## Xcode Command Line Tools

On macOS, installing the Xcode command line tools is often a good first step, as it installs git and other dev tools.

```sh
xcode-select --install
```

Afterwards verify the installation was successful:

```sh
$ xcode-select -p
```

## Copy Dotfiles

Manually copy any/all of the dotfiles from the dotfiles directory, or run `~./copy` to interactively copy ones that don't already exist or overwrite.

- dotfiles/zshrc > ~/.zshrc
- dotfiles/gitconfig > ~/.gitconfig
- dotfiles/gitignore > ~/.gitignore

The `.zshrc` file has lines that should be uncommented as their respective tools are installed.

## Install Homebrew

Install [Homebrew](https://brew.sh).

## Install Git

Git should be installed from the XCode Command Line Tools above, or it can be installed with Homebrew:

```sh
brew install git
```

## Install Node

The macOS installer can be downloaded from the [Node.js website](https://nodejs.org/en/download/), but using NVM is better.

### NVM

[NVM](https://github.com/nvm-sh/nvm) is a version manager for node.js. Follow the [installation instructions](https://github.com/nvm-sh/nvm#installing-and-updating), then [install a version of node](https://github.com/nvm-sh/nvm).

To install the latest LTS version of node:

```sh
nvm install --lts
```

To install the latest stable version:

```sh
nvm install node # "node" is an alias for the latest version
```

To install a specific version:

```sh
nvm install 14.7.0 # or 16.3.0, 12.22.1, etc
```

To update to the latest LTS version of node, npm, and migrate existing installed packages:

```sh
nvm install --lts --reinstall-packages-from=default --latest-npm
```

or:

```sh
nvm install --lts --reinstall-packages-from=current --latest-npm
```

To update just npm:

```sh
nvm install-latest-npm
```

To see which versions of node are installed:

```sh
nvm ls
```

To change which version of node is in use:

```sh
nvm use default
nvm use --lts
nvm use v18.14.2
```

To set a default Node version:

```sh
nvm alias default node
nvm alias default 'lts/*'
nvm alias default v19.14.2
```

## Install Fonts

Some terminal themes require fonts with specific icons/glyphs. Manually install all or one of the fonts in the [fonts directory](fonts/). To install, double-click on the font to open it in Font Book, then click the Install Font button.

More awesome fonts can be found at [NerdFonts](https://www.nerdfonts.com/font-downloads).

## Setup Terminal

I use the built-in Terminal app, or sometimes [Hyper](https://hyper.is).

### Install Starship

[Starship](https://starship.rs) is a nice, clean terminal prompt. Install it via homebrew:

```sh
brew install starship
```

Uncomment out the starship line(s) in the `~/.zshrc` file.

Alternative prompts I like:

1. [Pure](https://github.com/sindresorhus/pure)
2. [Powerlevel10k](https://github.com/romkatv/powerlevel10k) + [this theme](https://www.reddit.com/r/zsh/comments/b45w6v/pure_power_a_beautiful_theme_with_a_powerful_punch/)
3. [Spaceship](https://spaceship-prompt.sh)
4. [Oh My Zsh](https://ohmyz.sh)

### Install More Zsh Plugins

Optionally install the following plugins:

[**zsh-autosuggestions**](https://github.com/zsh-users/zsh-autosuggestions) - adds greyed-out auto-suggestions while typing.

```sh
brew install zsh-autosuggestions
```

Tip: use the forward arrow key or opt+f or opt+b to accept suggestions.

[**zsh-syntax-highlighting**](https://github.com/zsh-users/zsh-syntax-highlighting) - adds color highlightning to known and unknown command.

```sh
brew install zsh-syntax-highlighting
```

Uncomment out or delete the respective lines at the end of the `~/.zshrc` file.

### Install Terminal Theme

TODO submodules

Install one or more themes from the [terminal](terminal/) directory.

Double click on a theme file to add it to the Terminal app. Then click the "Default" button at the bottom left to have all new terminal windows use it.

_After installing the theme you may need to change the font to one of the NerdFonts installed earlier._

Themes I like the most:

1. [Tomorrow Night Eighties](https://github.com/chriskempson/tomorrow-theme) with Droid Sans Mono Nerd Font 15pt.
2. [Snazzy Terminal](https://github.com/sindresorhus/terminal-snazzy) with Fire Code Retina Nerd Font 14pt.

If using Hyper, I like the [hyper-snazzy](https://github.com/sindresorhus/hyper-snazzy) theme.

### Simple Zsh Plugins

Simple Zsh Plugins is a simple, hand-rolled way to customize the zsh shell with exports, aliases, functions, etc... It's similar to Oh My Zsh but simpler and less bloated. The script and all of my plugins are in the [`.zsh_plugins`](.zsh-plugins/) directory.

1. Copy the `.zsh_plugins` directory to `~` (or already done if the `./copy.sh` script was run earlier).
2. Open the `~/.zshrc` file and uncomment out the Simple Zsh Plugin lines.
3. Add the names of any desired plugins from the `~/.zsh_plugins/plugins` directory to the plugins array. For example:

   ```sh
   plugins=(
       core
       dev
       node
       git
   )
   ```

4. Restart the terminal app.

See [the readme](.zsh-plugins/README.md) for more tips and usage.

## Create SSH Key

### Add SSH Key to GitHub

## Create/Add GPG Key

### Add GPG Key to GitHub

## Create Dev Directory

Create the directory for dev projects:

```sh
mkdir ~/Dev
```

### Clone Repositories

Now's a good time to clone git projects into the dev directory (or do it later).

## Setup Visual Studio Code

### Terminal

Enable Visual Studio Code from the command line:
https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line

1. Launch VS Code.
2. Open the Command Palette (Cmd+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.
3. Restart the terminal for the new $PATH value to take effect. You'll be able to type 'code .' in any folder to start editing files in that folder.

### Settings Sync

Sync editor settings:
https://code.visualstudio.com/docs/editor/settings-sync

1. You can turn on Settings Sync using the Turn On Settings Sync... entry in the Manage gear menu at the bottom of the Activity Bar.
2. Selecting the Sign in & Turn on button will ask you to choose between signing in with your Microsoft or GitHub account.
3. After signing in, Settings Sync will be turned on and continue to synchronize your preferences automatically in the background.

## Finish

run `./check.sh` to confirm everything is installed.
