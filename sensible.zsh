#
# Utilities
#

# History
HISTSIZE=5000
SAVEHIST=5000

# Colorful ls
if [[ "$OSTYPE" == darwin* ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi

#
# Completion
#
autoload -Uz compinit

setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
setopt PATH_DIRS           # Perform path search even on command names with slashes.
unsetopt CASE_GLOB         # Case-insensitive matching

# Colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Partial-word, and then substring completion.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Allow arrow selection
zstyle ':completion:*:*:*:*:*' menu select
