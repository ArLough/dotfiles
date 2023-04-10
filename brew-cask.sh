# Install cask packages
# Inspired by https://github.com/myshov/dotfiles/blob/master/install/brew-cask.sh

apps=(
    1password
    discord
    spotify
    slack
    grammarly
    zoom
    obsidian
    steam
    shifty
    notion
    firefox
    google-chrome
    keka
    visual-studio-code
    vlc
    vanilla
    iina
)

brew install "${apps[@]}" --cask
