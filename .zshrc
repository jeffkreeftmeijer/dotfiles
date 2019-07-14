source ~/.config/git-prompt.sh/git-prompt.sh
setopt PROMPT_SUBST
export PROMPT='%~ $(__git_ps1 "(%s) ")%# '
