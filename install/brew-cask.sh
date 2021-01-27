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
    microsoft-office # By https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a
    transmission
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package