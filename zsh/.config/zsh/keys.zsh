bindkey -e

# External editor
autoload -U edit-command-line
zle -N edit-command-line

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

autoload -U url-quote-magic bracketed-paste-magic
zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic

# Make sure that the terminal is in application mode when zle is active, since
# only then values from $terminfo are valid
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

# Use human-friendly identifiers.
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
# xterm compat extended key definitions
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"              beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"               end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"            overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"         backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"            delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"                up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"              down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"              backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"             forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"            beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"          end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"         reverse-menu-complete
[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

bindkey "^e" history-incremental-search-backward
bindkey " " magic-space

# Edit the current command line in $EDITOR
bindkey '\C-x\C-e' edit-command-line
