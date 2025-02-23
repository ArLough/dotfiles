# Install cask packages

casks = (
# Productivity
1password # Password Manager
1password-cli
obsidian # Notes/Second Brain
spotify # Music
discord
zoom
visual-studio-code
iterm2 # Terminal
jetbrains-toolbox # Jetbrains installer
docker # Containerize for deployment
iina # Mac-like Video Player
istat-menus # Computer stats in menu bar
itsycal # Nice calendar in menu bar
cheatsheet # CMD to pull up shortcuts
MonitorControl # Manage brightness on external display
hiddenbar # Hide some menu bar items
keka # Unarchiver
rectangle # Window Manager
authy # 2fa
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
