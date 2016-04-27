# .files

This is my dotfiles based on and inspired by [Lars Kappert](https://webpro.nl/)'s
[dotfiles](https://github.com/webpro/dotfiles). Some of configurations and
the list of packages are modified in my taste.

## Package Overview

* Core
    * Zsh + oh-my-zsh + coreutils
    * Homebrew, homebrew-cask, homebrew-science, homebrew-python
    * nvm
    * Git + hub
    * Python 2.7, pip, pyenv
    * peco
* OS X Quick Look plugins
* OS X apps

## Install

On a sparkling fresh installation of OS X:

    sudo softwareupdate -i -a
    xcode-select --install

**Note that you should install the entire Xcode in this step!**

Install the dotfiles with either Git:

### Clone with Git

    git clone https://github.com/kyukyukyu/dotfiles.git
    source dotfiles/install.sh

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help               This help message
       edit               Open dotfiles in default editor (vim)
       reload             Reload dotfiles
       update             Update packages and pkg managers: OS X Applications, Homebrew/Cask, npm, and pip
       install vundle     Install Vundle

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the
creators of the incredibly useful tools. Special thanks to Lars Kappert for
sharing great dotfiles examples and tutorials and introducing tons of great
tools.
