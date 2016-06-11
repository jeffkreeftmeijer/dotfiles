## Minimal configuration for Terminal.app
# 
# One of the nice things about Terminal.app on OS X is that there's not a lot to
# configure. The default profile is almost perfect for me. I like using a light
# background in my terminal, and the colors are nice and clear without any
# configuration.
# 
# ![Inconsolata in 16pt with a line height of 1.25 in Terminal.app]
# 
# Because of these sensible defaults, there are just three things I set up:
# 
# * I use [Inconsolata] as my typeface instead of [Menlo].
# 
# * For readability, I increased the font size to 16pt and set the line spacing to 1.25.
# 
# * I turned off the (visual) bells, badges, and app icon bouncing.
# 
# That's all. I exported the [profile] and keep it [in my dotfiles] to make it
# easy to set up. To use it, [install Inconsolata] and open `Basic+.terminal` in
# Terminal.app.
#
# [Inconsolata]: https://github.com/google/fonts/tree/master/ofl/inconsolata
# [Menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
# [in my dotfiles]: https://github.com/jeffkreeftmeijer/dotfiles/blob/master/Basic%2B.terminal
# [Inconsolata in 16pt with a line height of 1.25 in Terminal.app]: images/basic+.png
# [Install Inconsolata]: https://github.com/jeffkreeftmeijer/dotfiles/blob/master/setup/inconsolata.sh

osascript <<EOD
tell application "Terminal"
  local allOpenedWindows
  local initialOpenedWindows
  local windowID

  set initialOpenedWindows to id of every window

  do shell script "open 'Basic+.terminal'"
  delay 1

  set default settings to settings set "Basic+"

  set allOpenedWindows to id of every window
  repeat with windowID in allOpenedWindows
    if initialOpenedWindows does not contain windowID then
      close (every window whose id is windowID)
    end if
  end repeat
end tell
EOD
