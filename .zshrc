# Prompt
source ~/.config/git-prompt.sh/git-prompt.sh
setopt PROMPT_SUBST
export PROMPT='%~ $(__git_ps1 "(%s) ")%# '

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Use nvim as $EDITOR
export EDITOR=nvim

# Packages
source <(antibody init)
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-history-substring-search

# Bind up and down arrows to history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
