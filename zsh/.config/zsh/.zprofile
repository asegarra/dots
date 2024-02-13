export EDITOR='nvim'
export VISUAL='nvim'
export BAT_THEME=gruvbox-dark

# Define LS_COLORS
eval "$(dircolors --sh)"

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/{,s}bin(N)
  $HOME/.local/bin
  /opt/local/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $HOME/.cargo/bin
  $HOME/.local/share/coursier/bin
  $path
)

eval "$(fnm env --use-on-cd)"

# eval $(keychain --eval --noask --quiet id_ed25519)

# Start graphical wayland session
# if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#   export XDG_CURRENT_DESKTOP=sway
#   export XDG_SESSION_TYPE=wayland	
#   export MOZ_ENABLE_WAYLAND=1
#   exec sway > /tmp/sway.log 2>&1 
# fi
