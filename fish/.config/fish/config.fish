if not status --is-interactive
    exit
end

fish_add_path ~/.local/share/coursier/bin
fish_add_path ~/.local/bin

set -g fish_greeting
set -gx EDITOR nvim

alias lg="lazygit"
alias j="journalctl -f"
alias ls="eza"

abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr --add !! --position anywhere --function last_history_item

# function echo_prompt --on-event fish_postexec
#   echo ""
# end

zoxide init fish | source
fnm env --use-on-cd | source
starship init fish | source

