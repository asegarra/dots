# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/keys.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/fzf.zsh

# Enable help
unalias run-help 2> /dev/null 
autoload -Uz run-help

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd)"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
