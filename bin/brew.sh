brew install erlang elixir rbenv \
             tmux neovim/neovim/neovim ag jpegoptim postgresql pow \
	     homebrew/versions/mongodb30 redis chromedriver heroku-toolbelt

# Start Postgres, Redis and Chromedriver
brew services start postgresql
brew services start redis
brew services start chromedriver
brew services start homebrew/versions/mongodb30

# Pow
mkdir -p ~/Library/Application\ Support/Pow/Hosts
ln -s ~/Library/Application\ Support/Pow/Hosts ~/.pow
sudo pow --install-system
pow --install-local

sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist

# Install pip and the Neovim Python client
sudo easy_install pip
pip install neovim --user
