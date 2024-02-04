# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Autoload zsh functions.
#fpath=(~/.config/zsh/functions $fpath)
#autoload -U ~/.config/zsh/functions/*(:t)

source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/keys.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/fzf.zsh

# Enable help
unalias run-help 2> /dev/null 
autoload -Uz run-help

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
source ~/git/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
