fonts=(
	font-fira-code
    font-source-code-pro
    font-jetbrains-mono
    font-inconsolata
)

install_brew_fonts() {
    info "Installing homebrew fonts ..."
	brew tap homebrew/cask-fonts # Necessary to install fonts
	brew install "${fonts[@]}" --cask
}