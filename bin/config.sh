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

# Hide icons from Desktop
defaults write com.apple.finder CreateDesktop -bool false

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -bool YES

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Click trackpad corner to emulate right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -bool true

# Tap with two fingers to emulate right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# Restart the Dock and the Finder
killall Dock Finder
