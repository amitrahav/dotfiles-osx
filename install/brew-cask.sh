#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    gyazo
    spectacle
    flux
    imagealpha
    imageoptim
    iterm2
    webstorm
    firefox
    firefoxnightly
    google-chrome
    google-chrome-canary
    malwarebytes-anti-malware
    glimmerblocker
    hammerspoon
    macdown
    opera
    screenflow
    slack
    transmit
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
