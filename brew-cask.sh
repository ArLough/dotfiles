# Install cask packages
# Inspired by https://github.com/myshov/dotfiles/blob/master/install/brew-cask.sh

apps=(
    firefox
    google-chrome
    keka
    visual-studio-code
    vlc
)

brew install "${apps[@]}" --cask
