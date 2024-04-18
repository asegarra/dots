#!/bin/sh

# Absolute path to this script
SCRIPT=$(readlink -f $0)
# Absolute path this script is in
DOTFILES_DIR=$(dirname $SCRIPT)
FORCE=false

# Parse named command-line arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
  --force) FORCE=true ;;
  *) break ;;
  esac
  shift
done

install() {
  local TARGET_PATH="$DOTFILES_DIR/$1"
  local LINK_PATH="$2"

  if [ "$FORCE" = "true" ]; then
    # Create the symbolic link
    ln -sf "$TARGET_PATH" "$LINK_PATH"
    echo "Symbolic link forcefully created at $LINK_PATH -> $TARGET_PATH"
  #Check if the symlink or file already exists at the destination
  elif [ -e "$LINK_PATH" ] || [ -L "$LINK_PATH" ]; then
    echo "[warn] A file or symbolic link already exists at $LINK_PATH. No action taken."
  else
    # Create the symbolic link
    ln -s "$TARGET_PATH" "$LINK_PATH"
    echo "Symbolic link created at $LINK_PATH -> $TARGET_PATH"
  fi
}

echo "Linking config files from $DOTFILES_DIR"

mkdir -p ~/.ssh
install files/ssh-config ~/.ssh/config

mkdir -p ~/.config/tmux
install files/tmux.conf ~/.config/tmux/tmux.conf

install files/gitconfig ~/.gitconfig

install files/bashrc ~/.bashrc
install files/bashrc.d ~/.bashrc.d

echo "Installing VIM"
mkdir -p ~/.vim
install files/vimrc ~/.vim/vimrc

VIM_PLUG="$HOME/.vim/autoload/plug.vim"
if [ -f "$VIM_PLUG" ]; then
  echo "$VIM_PLUG already exists, skipping."
else
  curl -fLo $VIM_PLUG --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Setting up GNOME"
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 10'
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.shell.app-switcher current-workspace-only 'true'
gsettings set org.gnome.shell disabled-extensions "['background-logo@fedorahosted.org']"

echo "All done."
