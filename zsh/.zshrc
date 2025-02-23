source /usr/local/share/antigen/antigen.zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# path to homebrew python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load the shell dotfiles, and then some:
for file in ~/dotfiles/{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

autoload -Uz compinit
compinit

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle Aloxaf/fzf-tab
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle thefuck
antigen bundle z

# Load the theme.
antigen theme https://github.com/starship/starship
starship preset nerd-font-symbols -o ~/.config/starship.toml 

# Tell Antigen that you're done.
antigen apply

eval $(thefuck --alias)
eval "$(starship init zsh)"

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

export PATH="/usr/local/sbin:$PATH"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
