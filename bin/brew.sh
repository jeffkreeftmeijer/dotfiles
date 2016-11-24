brew install erlang elixir rbenv \
             tmux neovim/neovim/neovim ag jpegoptim

# Pow
brew install pow
mkdir -p ~/Library/Application\ Support/Pow/Hosts
ln -s ~/Library/Application\ Support/Pow/Hosts ~/.pow
sudo pow --install-system
pow --install-local

sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist

# Postgres
brew install postgresql
brew services start postgresql
