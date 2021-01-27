# Copy paste this file in bit by bit.
# Don't run it.

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

###############################################################################
# Backup old machine's dotfiles                                               #
###############################################################################

mkdir -p ~/migration/home
cd ~/migration

# then compare brew-list to what's in `brew.sh`
#   comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# let's hold on to these

cp ~/.extra ~/migration/home
cp ~/.z ~/migration/home
cp -R ~/.ssh ~/migration/home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # wifi
cp -R ~/Library/Services ~/migration # automator stuff
cp ~/.bash_history ~/migration # back it up for fun?
cp ~/.gitconfig.local ~/migration
cp ~/.z ~/migration # z history file.


###############################################################################
# XCode Command Line Tools                                                    #
###############################################################################

if ! xcode-select --print-path &> /dev/null; then

  # Prompt user to install the XCode Command Line Tools
  xcode-select --install &> /dev/null

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Wait until the XCode Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles-osx/issues/13

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Prompt user to agree to the terms of the Xcode license
  # https://github.com/alrra/dotfiles-osx/issues/10

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi


###############################################################################
# Homebrew                                                                    #
###############################################################################

$HOME/dotfiles-osx/install/brew.sh
$HOME/dotfiles-osx/install/brew-cask.sh


###############################################################################
# Node (by NVM)                                                               #
###############################################################################

$HOME/dotfiles-osx/install/npm.sh


###############################################################################
# OSX defaults                                                                #
# https://github.com/hjuutilainen/dotfiles-osx/blob/master/bin/osx-user-defaults.sh
###############################################################################

$HOME/dotfiles-osx/osx/set-defaults.sh


###############################################################################
# Symlinks to link dotfiles into ~/                                           #
###############################################################################

$HOME/dotfiles-osx/setup.sh
