# Install cask packages

casks = (
# Productivity
1password # Password Manager
1password-cli
obsidian # Notes
spotify # Music
discord
zoom
visual-studio-code
ghostty # Terminal
jetbrains-toolbox # Jetbrains installer
docker # Containerize for deployment
iina # Mac-like Video Player
istat-menus # Computer stats in menu bar
itsycal # Nice calendar in menu bar
cheatsheet # CMD to pull up shortcuts
MonitorControl # Manage brightness on external display
hiddenbar # Hide some menu bar items
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
