#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  xcode-select --install
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages I use on a day-to-day basis.
#
# - Basic Utilities: bash-compilition2 (https://github.com/scop/bash-completion)
#   moreutils(https://joeyh.name/code/moreutils/), autojump (https://github.com/joelthelion/autojump): a faster way to navigate
#   your filesystem, ponysay(https://github.com/erkin/ponysay/) - enables pony to speak.
# - Tree (http://mama.indstate.edu/users/ice/tree/): A directory listing utility
#   that produces a depth indented listing of files.

# - Languages: rvm (Ruby), nvm (Node.js), python 3
# - Fuck (https://github.com/nvbn/thefuck): Correct your previous command. Note
#   that this needs to be added to zsh or bash. See the project README.
# - git-extras (https://vimeo.com/45506445): Adds a shit ton of useful commands to git.
# - ffmpeg (https://ffmpeg.org/): Converting video and audio has never been so easy.
# Note that I install nvm (https://github.com/creationix/nvm) instead
# of installing Node directly. This gives me more explicit control over
# which version I'm using.


# Get rid of old defualt python versions
sudo rm /usr/local/bin/python*
sudo rm /usr/local/bin/pip*
sudo rm -Rf /Library/Frameworks/Python.framework/Versions/*

apps=(
    bash-completion2
    moreutils
    autojump
    fortune
    ponysay
    thefuck

    gnu-sed 
    grep 
    tree

    git
    git-extras
    hub

    source-highlight
    the_silver_searcher
    
    wifi-password
    
    zlib
    python3

    ffmpeg
    imagemagick 
)

brew install "${apps[@]}"

# Heroku CLI
brew tap heroku/brew && brew install heroku
heroku autocomplete --refresh-cache

# Goles buttery
brew tap Goles/battery && brew install battery

# Remove outdated versions from the cellar
brew cleanup

# Activation (Summary):
## anitgen - activated at zshrc file
## bash-compilation - activated at zshrc and bash_profile
## python - install python 3, for virtualenvwrapper
## autojump (and other compilations) activated at bash_profile
