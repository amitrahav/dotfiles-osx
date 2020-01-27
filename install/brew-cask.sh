#!/bin/bash


# Install packages
apps=(
    gyazo
    spectacle
    imagealpha
    imageoptim
    iterm2
    google-chrome
    malwarebytes
    macdown
    slack
    transmit
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package