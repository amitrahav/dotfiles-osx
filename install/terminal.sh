#!/bin/bash

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Install the Solarized Dark theme for iTerm
open "${DOTFILES_DIR}/iterm/themes/Solarized Dark.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Preserve whitespace in selections copied to the pasteboard
defaults write com.googlecode.iterm2 TrimWhitespaceOnCopy -bool false

# Integrated shell
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash