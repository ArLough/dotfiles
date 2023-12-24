# Install cask packages
# Inspired by https://github.com/myshov/dotfiles/blob/master/install/brew-cask.sh

brew tap homebrew/cask # Necessary to install casks
brew tap homebrew/cask-fonts # Necessary to install fonts

# Productivity
brew install 1password --cask # Password Manager
brew install 1password-cli --cask
brew install obsidian --cask # Notes/Second Brain
brew install raindropio --cask  # Bookmark manager

# Entertainment
brew install spotify --cask # Music
brew install steam --cask # Gaming
# brew install --cask minecraft

# Communication
brew install slack --cask
brew install discord --cask
brew install zoom --cask

# Browsers
brew install firefox --cask
brew install google-chrome --cask

# Coding
brew install visual-studio-code --cask
brew install iterm2 --cask # Terminal
brew install jetbrains-toolbox --cask # Jetbrains installer
# brew install docker --cask # Containerize for deployment
# brew install utm --cask # VM
# brew install postman --cask # API testing

# Video Player
brew install vlc --cask # Common Video Player
brew install iina --cask # Mac-like Video Player

# Utilities
brew install istat-menus --cask # Computer stats in menu bar
brew install itsycal --cask # Nice calendar in menu bar
brew install cheatsheet --cask # CMD to pull up shortcuts
brew install MonitorControl --cask # Manage brightness on external display
brew install hiddenbar --cask # Hide some menu bar items 
brew install keka --cask # Unarchiver
brew install rectangle --cask # Window Manager
brew install espanso --cask # text expansion
brew install authy --cask # 2fa
brew install google-backup-and-sync --cask # backup & sync
# brew install coconutbattery --cask # battery health utility
# brew install shottr --cask # Screenshot Utility
# brew install daisydisk --cask # Disk Manager
# brew install shifty --cask # Fine Grained Night Shift control
# brew install lulu --cask # Firewall
# brew install karabiner-elements --casks # rn just to do this https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e?permalink_comment_id=4271644

# Misc. applications
brew install brooklyn --cask # Screensaver
brew install copilot --cask # Finance app

# Quicklook Plugins
brew install qlcolorcode --cask
brew install qlstephen --cask
brew install qlmarkdown --cask
brew install quicklook-json --cask
brew install qlimagesize --cask
brew install suspicious-package --cask 
brew install apparency --cask
brew install quicklookase --cask
brew install qlvideo --cask

# Fonts
brew install font-source-code-pro --cask
brew install font-jetbrains-mono --cask
brew intsall font-inconsolata --cask
