# Install cask packages

casks = (
# Productivity
1password # Password Manager
1password-cli
obsidian # Notes/Second Brain
# raindropio  # Bookmark manager
# Entertainment
spotify # Music
steam # Gaming
# Communication
slack
discord
zoom
# Browsers
firefox
google-chrome
# Coding
visual-studio-code
iterm2 # Terminal
jetbrains-toolbox # Jetbrains installer
docker # Containerize for deployment
# utm # VM
# postman # API testing
# Video Player
vlc # Common Video Player
iina # Mac-like Video Player
# Utilities
istat-menus # Computer stats in menu bar
itsycal # Nice calendar in menu bar
cheatsheet # CMD to pull up shortcuts
MonitorControl # Manage brightness on external display
hiddenbar # Hide some menu bar items
keka # Unarchiver
rectangle # Window Manager
authy # 2fa
google-backup-and-sync # backup & sync
# daisydisk # Disk Manager
# Misc. applications
brooklyn # Screensaver
# Quicklook Plugins
qlcolorcode
qlstephen
qlmarkdown
quicklook-json
qlimagesize
suspicious-package
apparency
quicklookase
qlvideo)

install_brew_casks(){
    info "Installing mac apps using homebrew casks ..."
    brew tap homebrew/cask
    brew install "${apps[@]}" --cask
}
