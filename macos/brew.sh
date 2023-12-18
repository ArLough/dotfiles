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
    grep # find matching patterns in a file - global regular expression print
    httpie # curl replacement
    python3 # Python dev
    node # js package managment
    openjdk # Java dev
    ruby # Ruby necessary for homebrew
    curl # get a file from an http server
    tree # display dirs as trees
    wget # internet file retriever
    htop # better top - interactive process viewer
    tldr # tldr of man pages
    bash # macos bash is old
    zsh # my preffered shell
    youtube-dl # dowload yt videos from command line
    mackup # keeps macOS system files in sync
    navi # suggest commands
    trash # moves a file to trash as opposed to rm which permanently deletes
    thefuck # correct last command
    zsh-syntax-highlighting # better zsh syntax highlighting
    zsh-autosuggestions # better zsh autosuggestions
    # optional
    # yarn - JavaScript package manager
    # nvm - manage multiple node versions
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
