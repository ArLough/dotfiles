# Yes I know this is super messy
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load the shell dotfiles, and then some:
for file in ~/dotfiles/{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#addition made based on stack overflow post: https://stackoverflow.com/questions/18419500/how-to-make-mac-os-use-the-python-installed-by-homebrew
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
# Setting PATH for Python 2.7
#The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#from piazza post @92, @50 on 485
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"source/Users/aidanloughney/.bash_profile



. "$HOME/.atuin/bin/env"
