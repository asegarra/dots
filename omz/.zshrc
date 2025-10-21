# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf fnm zoxide)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR="nvim"

alias cleanj="sudo journalctl --rotate && sudo journalctl --vacuum-time=1d"
alias lg="lazygit"
eval "$(fnm env --use-on-cd)"
