#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

. macos/setup.sh
. macos/mas.sh
. brew/packages.sh
. brew/casks.sh
. brew/fonts.sh
. scripts/utils.sh
. scripts/stow.sh

cleanup() {
	err "Last command failed"
	info "Finishing..."
}

wait_input() {
	read -p -r "Press enter to continue: "
}

main() {
	info "Installing ..."

	info "################################################################################"
	info "Homebrew Packages"
	info "################################################################################"
	wait_input
    install_brew_packages
	success "Finished installing Homebrew packages"

	info "################################################################################"
	info "Homebrew Fonts"
	info "################################################################################"
	wait_input
	install_brew_fonts
	success "Finished installing Homebrew fonts"

	info "################################################################################"
	info "MacOS Apps"
	info "################################################################################"
	wait_input
	install_brew_casks
    info "Installing mac apps from mac app store ..."
	install_masApps
	success "Finished installing macOS apps"

	info "################################################################################"
	info "Configuration"
	info "################################################################################"
	wait_input

    info "Configuring macos with prefered settings ..."
	setup_macos
	success "Finished configuring MacOS defaults. NOTE: A restart is needed"

    info "Stowing dotfiles"
	stow_dotfiles
	success "Finished stowing dotfiles"

	success "Done"

	info "System needs to restart. Restart?"

	select yn in "y" "n"; do
		case $yn in
		y)
			sudo shutdown -r now
			break
			;;
		n) exit ;;
		esac
	done
}

trap cleanup SIGINT SIGTERM ERR EXIT

main
