#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

. scripts/setup.sh
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
	info "Starting ..."

 	info "Installing homebrew..."
    if ! command -v brew &> /dev/null; then
      echo "[Homebrew] Homebrew not found, installing..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
      echo "[Homebrew] Homebrew is already installed."
    fi
	success "Finished installing Homebrew"

	info "Installing brewfile..."
    brew bundle --file=~/dotfiles/Brewfile --verbose
	success "Finished installing Brewfile"

    info "Configuring macos with prefered settings ..."
	setup_macos
	success "Finished configuring MacOS defaults. NOTE: A restart is needed"

	info "Stowing dotfiles..."
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
