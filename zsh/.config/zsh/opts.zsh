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
