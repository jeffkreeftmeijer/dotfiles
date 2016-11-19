# Faster (initial) key repeat
defaults write -g InitialKeyRepeat -int 15 # 250ms
defaults write -g KeyRepeat -int 2 #33ms

# Remove all apps from the dock
defaults write com.apple.dock persistent-apps -array

# Automatically hide the dock
defaults write com.apple.dock autohide -bool true

# Remove Dock hide delay
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# Restart the Dock
killall Dock
