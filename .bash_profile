eval "$(rbenv init -)"

# History control:
# - ignorespace: lines which begin with a space character are not saved
# - ignoredups: lines matching the previous history entry are not saved
# - erasedups: all previous lines matching the current line are removed before
#   the new line is saved
export HISTCONTROL=ignorespace:ignoredups:erasedups
