# Faster (initial) key repeat
defaults write -g InitialKeyRepeat -int 15 # 250ms
defaults write -g KeyRepeat -int 2 #33ms

# Install appsignal.terminal
curl -OO https://gist.githubusercontent.com/jeffkreeftmeijer/5a9bb873233b1110eed9e8cd62591a85/raw/appsignal-{light,dark}.terminal
open appsignal-*.terminal
