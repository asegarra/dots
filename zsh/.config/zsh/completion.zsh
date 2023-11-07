setopt complete_in_word  # Complete from both ends of a word.
setopt always_to_end     # Move cursor to the end of a completed word.
setopt no_case_glob      # Make globbing case insensitive.

autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

_comp_options+=(globdots) # match files beginning with dots (hidden)

# defaults
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# Enable caching
zstyle ':completion:*' use-cache on

# Group matches and describe.
zstyle ':completion:*' menu select
zstyle ':completion:*' complete-options true
zstyle ':completion:*:matches' group yes
zstyle ':completion:*:options' description yes
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format '%F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format '%F{purple}-- %d --%f'
zstyle ':completion:*:warnings' format '%F{red}-- no matches found --%f'
zstyle ':completion:*' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
# case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
