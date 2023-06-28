if not status --is-interactive
    exit
end

set EDITOR nvim

set -g fish_greeting

if test -e ~/.asdf/asdf.fish
    source ~/.asdf/asdf.fish
end

alias wgu="sudo wg-quick up wg0"
alias wgd="sudo wg-quick down wg0"

zoxide init fish | source
starship init fish | source
