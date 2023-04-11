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
    istat-menus
    cheatsheet
    qlcolorcode
    qlstephen 
    qlmarkdown 
    quicklook-json 
    qlimagesize 
    suspicious-package 
    apparency 
    quicklookase 
    qlvideo
)

brew install "${apps[@]}" --cask
