apps=(
	1447330651 # copilot money
    1502839586 # hand mirror
)

install_masApps() {
	info "Installing App Store apps..."
	for app in "${mas_apps[@]}"; do
		mas install "$app"
	done
}