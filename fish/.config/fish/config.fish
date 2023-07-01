if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        set -g XDG_CURRENT_DESKTOP sway
        set -g XDG_SESSION_TYPE wayland
        set -g MOZ_ENABLE_WAYLAND 1
        keychain --eval --noask --quiet id_ed25519 | source
        exec sway >/tmp/sway.log 2>&1
    end
end


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
