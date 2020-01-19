#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    gyazo
    spectacle
    imagealpha
    imageoptim
    iterm2
    firefox
    google-chrome
    malwarebytes-anti-malware
    glimmerblocker
    macdown
    screenflow
    slack
    transmit
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
