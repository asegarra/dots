export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

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

# Define LS_COLORS
eval "$(dircolors --sh)"

export LESS='-g -i -M -R -S -w -z-4'

export LESS_TERMCAP_mb=$'\E[01;31m'      # Begins blinking.
export LESS_TERMCAP_md=$'\E[01;31m'      # Begins bold.
export LESS_TERMCAP_me=$'\E[0m'          # Ends mode.
export LESS_TERMCAP_se=$'\E[0m'          # Ends standout-mode.
export LESS_TERMCAP_so=$'\E[00;47;30m'   # Begins standout-mode.
export LESS_TERMCAP_ue=$'\E[0m'          # Ends underline.
export LESS_TERMCAP_us=$'\E[01;32m'      # Begins underline.

## History file configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# History opts
setopt extended_history       # Record timestamp of command in HISTFILE
setopt hist_expire_dups_first # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # Ignore duplicated commands history list
setopt hist_ignore_space      # Ignore commands that start with space
setopt hist_verify            # Show command with history expansion to user before running it
setopt share_history          # Share command history data
setopt inc_append_history     # Save commands immediately

# Misc opts
setopt auto_cd                # cd without cd  
setopt auto_pushd             # Always pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt numeric_glob_sort      # Sort filenames numerically when it makes sense
unsetopt flow_control         # Disable start/stop characters in shell editor.
setopt interactive_comments   # Allow comments starting with `#` in the interactive shell.
setopt no_clobber             # Disallow `>` to overwrite existing files. Use `>|` or `>!` instead.
setopt extended_glob          # Treat `#`, `~`, and `^` as patterns for filename globbing.
setopt notify                 # Report background job status immediately
