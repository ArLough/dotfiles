# Install Homebrew
# Heavily inspired by https://github.com/myshov/dotfiles/blob/master/install/brew.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    coreutils
    cask # to install casks
    git # scm
    grep
    hub
    httpie
    python3 # Python dev
    node # js package managment
    openjdk # Java dev
    ruby # Ruby necessary for homebrew
    curl
    tree
    wget
    tldr
    bash # macos bash is old
    zsh # my preffered shell
    youtube-dl # dowload yt videos from command line
    mackup
    navi # suggest commands
    zsh-syntax-highlighting # better zsh syntax highlighting
    zsh-autosuggestions # better zsh autosuggestions
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
