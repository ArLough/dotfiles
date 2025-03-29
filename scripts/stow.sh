#!/usr/bin/env bash

stow_dotfiles(){
    stow git
    stow -t ~/Library/Application\ Support/Code/User vscode
    stow zsh
    stow vim
    stow ghostty
}
