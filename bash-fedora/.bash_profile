# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

export N_PREFIX=$HOME/n
PATH=$N_PREFIX/bin:$PATH

PATH="/usr/local/go/bin:$HOME/go/bin:$HOME/bin:$PATH"
