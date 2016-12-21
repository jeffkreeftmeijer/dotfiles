source ~/.config/bash/git-prompt.sh/git-prompt.sh

# PS1: "~/foo/bar/baz $ "
export PS1='\w $(__git_ps1 "(%s) ")$ '

# History control:
# - ignorespace: lines which begin with a space character are not saved
# - ignoredups: lines matching the previous history entry are not saved
# - erasedups: all previous lines matching the current line are removed before
#   the new line is saved
export HISTCONTROL=ignorespace:ignoredups:erasedups

# Unlimited history
export HISTFILESIZE=
export HISTSIZE=

# Append to history instead of overwriting
shopt -s histappend

# Use nvim as $EDITOR
export EDITOR=nvim

# Colorize ls by default
alias ls='ls -G'

# rbenv
eval "$(rbenv init -)"
