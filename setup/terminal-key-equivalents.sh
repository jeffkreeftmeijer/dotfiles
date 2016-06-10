## Disable ⌘S, ⌘W and ⌘Q in Terminal.app
#
# I remapped three shortcut keys to ensure I don't accidentally save terminal
# output or close a window in Terminal.app:
#
# * ⌃⌘S instead of ⌘S to "Export Text As..."
# * ⌃⌘W instead of ⌘W to "Close Window"
# * ⌃⌘Q instead of ⌘Q to "Quit Terminal"
#
# ![Setting up keyboard shortcuts for Terminal.app ( › System Preferences… › Keyboard)]
# 
# Instead of using System Preferences, you can quickly set these up using
# `defaults` from the command line:
# 
#    $ defaults write -app Terminal NSUserKeyEquivalents '{
#      "Export Text As..." = "@^S";
#      "Close Window"      = "@^W";
#      "Quit Terminal"     = "@^Q";
#    }'
#
# [Setting up keyboard shortcuts for Terminal.app ( › System Preferences… › Keyboard)]: images/terminal-keyboard-shortcuts.png

defaults write -app Terminal NSUserKeyEquivalents '{
  "Export Text As..." = "@^S";
  "Close Window"      = "@^W";
  "Quit Terminal"     = "@^Q";
}'
