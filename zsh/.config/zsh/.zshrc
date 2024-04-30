
# Autoload zsh functions.
#fpath=(~/.config/zsh/functions $fpath)
#autoload -U ~/.config/zsh/functions/*(:t)

source $HOME/.config/zsh/opts.zsh
source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/keys.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/fzf.zsh
source $HOME/.config/zsh/ps1.zsh

# Enable help
unalias run-help 2> /dev/null 
autoload -Uz run-help

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"