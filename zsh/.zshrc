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

# Oh-my-zsh
ZSH_THEME=""

plugins=(git
		colorize
		z
		thefuck
		zsh-autosuggestions
		zsh-syntax-highlighting
		fzf-tab)

source $ZSH/oh-my-zsh.sh

ZSH_COLORIZE_TOOL=chroma

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

eval $(thefuck --alias)
eval "$(starship init zsh)"

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/fzf-tab/fzf-tab.zsh

export PATH="/usr/local/sbin:$PATH"
