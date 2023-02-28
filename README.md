# Nathan's Dotfiles

Bootstrap a new machine with configuration and installation of various tools and apps.

## Applications

Install these apps manually:

- Xcode (from the App Store)
- Google Chrome
- Visual Studio Code

## Xcode Command Line Tools

On a mac, installing the Xcode command line tools is often a good first step, as it installs git and other dev tools.

```sh
xcode-select --install
```

Afterwards verify the installation was successful:

```sh
$ xcode-select -p
```

## Install Git

## Install Node

## Install Fonts

## Setup Terminal

## Copy Dotfiles

Manually copy any of the dotfiles to correct location, or run `~./copy` to interactively copy ones that don't already exist or overwrite.

## Copy Zsh Plugins

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
