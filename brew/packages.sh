package=(
    coreutils
    cask # to install casks
    git # scm
    grep # find matching patterns in a file - global regular expression print
    httpie # curl replacement
    python3 # Python dev
    node # js package managment
    openjdk # Java dev
    ruby # Ruby necessary for homebrew
    curl # get a file from an http server
    tree # display dirs as trees
    fzf # fuzzy finder
    wget # internet file retriever
    htop # better top - interactive process viewer
    tldr # tldr of man pages
    bash # macos bash is old
    zsh # my preffered shell
    youtube-dl # dowload yt videos from command line
    navi # suggest commands
    trash # moves a file to trash as opposed to rm which permanently deletes
    bat # better cat with syntax highlighting
    eza # better ls
    thefuck # correct last command
    zsh-syntax-highlighting # better zsh syntax highlighting
    zsh-autosuggestions # better zsh autosuggestions
    yarn # JavaScript package manager
    nvm # manage multiple node versions
    git-delta # better git diff using bat
    starship # zsh prompt
    antigen # plugin manager for oh-my-zsh
)

install_brew_packages(){
    info "Installing packages ..."
    brew install "${apps[@]}"

    info "Cleaning up brew packages..."
	brew cleanup
    }
