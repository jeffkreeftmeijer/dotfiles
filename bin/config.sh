# Faster (initial) key repeat
defaults write -g InitialKeyRepeat -int 15 # 250ms
defaults write -g KeyRepeat -int 2 #33ms

# Remove all apps from the dock
defaults write com.apple.dock persistent-apps -array
