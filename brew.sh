# Install Homebrew
# Heavily inspired by https://github.com/myshov/dotfiles/blob/master/install/brew.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    coreutils
    git
    grep
    hub
    httpie
    python
    tree
    wget
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
