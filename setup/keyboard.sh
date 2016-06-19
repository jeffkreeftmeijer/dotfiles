# # Disable Caps Lock and increase keyboard speed
/Applications/Seil.app/Contents/Library/bin/seil set keycode_capslock 53

defaults write -g InitialKeyRepeat -int 15 # 250ms
defaults write -g KeyRepeat -int 2 #33ms
