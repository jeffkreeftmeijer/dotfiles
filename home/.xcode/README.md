# Dotfiles for Xcode?!

Eh, no. We're just symlinking Xcode's UserData directory. Run this if you want to remove your Userdata directory and use mine.

    cd ~/Library/Developer/Xcode
    rm -rf UserData
    ln -s ~/.xcode UserData
