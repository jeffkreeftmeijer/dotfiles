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
