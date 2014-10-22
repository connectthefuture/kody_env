echo "Setting OSX Defaults"

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Show the ~/Library folder.
chflags nohidden ~/Library

# by default show all hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# set default appearance for dock
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock magnification -int 1
defaults write com.apple.dock orientation -string right
defaults write com.apple.dock tilesize -int 16

#Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

#Disable Notification Center
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set dark mode as standard
defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark

#Set up trackpad. NOTE::These changes don't show up in System Preferences GUI.
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0
#Have to try and catch all instances between iMac and Mbp
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHandResting -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHorizScroll -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadMomentumScroll -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadScroll -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad USBMouseStopsTrackpad -int 0



#Set up hot corners
defaults write com.apple.dock "wvous-bl-corner" -int 4
defaults write com.apple.dock "wvous-bl-modifier" -int 0
defaults write com.apple.dock "wvous-br-corner" -int 10
defaults write com.apple.dock "wvous-br-modifier" -int 0
defaults write com.apple.dock "wvous-tl-corner" -int 3
defaults write com.apple.dock "wvous-tl-modifier" -int 0
defaults write com.apple.dock "wvous-tr-corner" -int 4
defaults write com.apple.dock "wvous-tr-modifier" -int 0


#Set Terminal theme
defaults write com.apple.Terminal "Default Window Settings" -string Pro
defaults write com.apple.Terminal "Startup Window Settings" -string Pro


# Show drives and devices
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
