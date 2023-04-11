# Yes I know this is super messy
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -CF"
alias lsa="ls -a -CF"
alias c='clear'
alias ipi='ipconfig getifaddr en0'
alias ipe='curl ipinfo.io/ip'
alias speed='speedtest-cli --server 2406 --simple'
alias 280="cd /Users/aidanloughney/Code/eecs280"
alias 281="cd /Users/aidanloughney/Code/eecs281"
alias 370="cd /Users/aidanloughney/Code/eecs370"
alias 390="cd /Users/aidanloughney/Code/eecs390"
alias 449="cd /Users/aidanloughney/Code/eecs449"
alias 485="cd /Users/aidanloughney/Code/eecs485"
alias 493="cd /Users/aidanloughney/Code/eecs493"

# Functions
mcd () {
    mkdir -p $1
    cd $1
}
# Function to extract any compressed file
extract ()
{
if [ -f $1 ] ; then
  case $1 in
    *.tar.gz)  tar xzf $1;;
    *.gz)      gunzip $1;;
    *.tar)     tar xf $1;;
    *.tgz)     tar xzf $1;;
    *.tar.bz2) tar xjf $1;;
    *.bz2)     bunzip2 $1;;
    *.rar)     rar x $1;;
    *.tbz2)    tar xjf $1;;
    *.zip)     unzip $1;;
    *.Z)       uncompress $1;;
    *)         echo "can't extract from $1";;
  esac
else
  echo "no file called $1"
fi
}


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


