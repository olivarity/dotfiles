# TODO: Create required symlinks

# Disable chime on AC adapter connect
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
killall PowerChime

# Stop iTunes from opening on iPhone connect
defaults write com.apple.iTunesHelper ignore-devices 1

# TODO: Additional setup scripts
