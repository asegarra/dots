# Environment
eval "$(fnm env --use-on-cd --shell zsh)"

# Flutter
export CHROME_EXECUTABLE=/opt/google/chrome/chrome

# Set the list of directories that Zsh searches for programs.
path=(
  $N_PREFIX/bin
  /usr/local/go/bin
  $HOME/go/bin
  $HOME/.local/share/coursier/bin
  $HOME/development/flutter/bin
  $path
)
