# Initial Setup

## Clone the dotfiles
```
xcode-select --install # install the command line tools
cd ~
git clone https://github.com/brototyp/dotfiles.git
```

## Perform basic Mac Setup
`~/dotfiles/osx`

## Install and setup zsh
`cd ~/dotfiles/zsh; ./zpresto_install.sh`

## Change shell to zsh
`chsh -s /bin/zsh`

## Install [homebrew](https://brew.sh/index_de.html)

## Install Brew Bundler
```
brew tap Homebrew/bundle
cd ~/dotfiles ; brew bundle
```
