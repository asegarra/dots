export EDITOR='nvim'
export VISUAL='nvim'

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
