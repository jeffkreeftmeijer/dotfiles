# PS1: "~/foo/bar/baz $ "
export PS1="\w $ "

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

# rbenv
eval "$(rbenv init -)"
