if not status --is-interactive
    exit
end

set -g fish_greeting
set -gx EDITOR nvim
set -gx N_PREFIX ~/n

fish_add_path ~/.local/share/coursier/bin
fish_add_path ~/.local/bin
fish_add_path $N_PREFIX/bin
fish_add_path /usr/local/go/bin
fish_add_path ~/go/bin


alias lg="lazygit"
alias j="journalctl -f"

abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr --add !! --position anywhere --function last_history_item

# function echo_prompt --on-event fish_postexec
#   echo ""
# end

zoxide init fish | source
# fnm env --use-on-cd | source
# starship init fish | source
