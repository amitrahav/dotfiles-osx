# Amit Rahav's Dotfiles
A worm and safe place for all of my dotfiles.

Basicity a personal version of [Nick Plekhanov's Dotfiles](https://github.com/nicksp/dotfiles).

Running on my OSX mojave at the moment, most parts was tested on Sierra, High sierra and Catalina.

## What's in the box

*setup.sh* using for building settings on existing system - you should run it directly from the command line `. $<dotfiles-osx path>/setup.sh`.

*setup-new-machine.sh* using for installing all stuff on a new machine. it should not run directly from the command line. you should copy paste its commands by pices.

Actions by files:

### Before you start

There are some committed files with a my name set as a value. you should change it.
1. On `osx/set-defaults.sh` you should change `COMPUTERNAME`,`HOSTNAME` and `LOCALHOSTNAME` values.
2. Change your projects (or add) directories for [tiny-care-terminal](https://github.com/notwaldorf/tiny-care-terminal) on `shell/tiny-care.env`.

### Setup.sh

1. Backup dotfiles into ~/dotfiles_old.
2. Symlink all shell and other dotfiles from repo in ~/
3. Installing [homebrew](https://brew.sh/) if not installed by calling the `install/brew.sh` script - Homebrew installs the stuff you need that Apple (or your Linux system) didn’t.
4. Installing [NVM](https://github.com/nvm-sh/nvm) for using different npm versions on your machine. if not installed by calling the `install/npm.sh` script.
5. Installing [casks](https://github.com/Homebrew/homebrew-cask) if not installed by calling the `install/brew-cask.sh` script. Homebrew cask is an extension of the homebrew functionality.
6. Installing all of the terminal beauty things: [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), a framework for [zsh](http://www.zsh.org/) shell, with [Antigen](https://github.com/zsh-users/antigen) - zsh plugin manager and [Nick Plekhanov's Zsh Theme](https://github.com/nicksp/dotfiles).
7. Some basic iTerm2 configurations - dark theme, utf-8 encoding, removing the error popup on close, and configure integrated shell.

### Setup-new-machine.sh

1. Do not run this script at once prompt.
2. Backup a big range of dotfiles into ~/migration.
3. Install [xcode-select developers tools](https://macops.ca/developer-binaries-on-os-x-xcode-select-and-xcrun/).
4. Installing [homebrew](https://brew.sh/) if not installed by calling the `install/brew.sh` script - Homebrew installs the stuff you need that Apple (or your Linux system) didn’t.
5. Installing [casks](https://github.com/Homebrew/homebrew-cask) if not installed by calling the `install/brew-cask.sh` script. Homebrew cask is an extension of the homebrew functionality.
6. Installing [NVM](https://github.com/nvm-sh/nvm) for using different npm versions on your machine. if not installed by calling the `install/npm.sh` script.
7. Set Osx defaults.
8. Run `setup.sh` file.

### Remote-setup.sh

1. Check if [Curl](https://curl.haxx.se/) and [Wget](https://www.gnu.org/software/wget/) installed and executable.
2. Create `~/dotfiles` directory, download and extract this repo into it.
3. Run `setup.sh` file.

### install/brew.sh

1. Install homebrew if is not yet installed.
2. Update and upgrade brew formulas.
3. Install this formulas:
    1. [bash-compilation2](https://github.com/scop/bash-completion) - set of bash compilation
    2. [moreutils]() - 
    3. [autojump](https://github.com/joelthelion/autojump) - a faster way to navigate your filesystem.
    4. [fortune]() -
    5. [ponysay](https://github.com/erkin/ponysay) - enables pony to speak.
    6. [gnu-sed]() - 
    7. [grep]() -
    8. [tree](http://mama.indstate.edu/users/ice/tree/) - A directory listing utility that produces a depth indented listing of files.
    9. [git]() -
    10. [git-extras]() -
    11. [hub](https://hub.github.com/) - use github from command line.
    12. source-highlight - syntax highlighter.
    13. [the_silver_searcher](https://geoff.greer.fm/ag/) - Code-search similar to ack.
    14. [wifi-password](https://github.com/rauchg/wifi-password) - People ask you for the Wi-Fi password. Answer quickly!
    15. [zlib](https://zlib.net/) - General-purpose lossless data-compression library.
    16. python3 - install system-wide python3, only for using virtualenvwrapper.
    17. [ffmpeg](https://www.ffmpeg.org/) - A complete, cross-platform solution to record, convert and stream audio and video.
    18. [imagemagick](https://imagemagick.org/index.php) - Use ImageMagick® to create, edit, compose, or convert bitmap images. It can read and write images in a variety of formats (over 200) including PNG, JPEG, GIF, HEIC, TIFF, DPX, EXR, WebP, Postscript, PDF, and SVG
    19. [heruko](https://devcenter.heroku.com/articles/heroku-cli) - The Heroku Command Line Interface (CLI) makes it easy to create and manage your Heroku apps directly from the terminal. It’s an essential part of using Heroku.
    20. [battery](https://github.com/Goles/Battery) - Bash script to display your Laptop's battery status on the terminal.
    21. [Fuck] (https://github.com/nvbn/thefuck): Correct your previous command. 
    
### instal/brew-cask.sh

Homebrew cask is an extension of the homebrew functionality.

Install some awesome extensions:
1. [gyazo](https://gyazo.com/) - Video screen recorder.
2. [spectacle](https://www.spectacleapp.com/) - Resize windows easily.
3. [imagealpha](https://pngmini.com/) - Reduces file sizes of 24-bit PNG files (including alpha transparency).
4. [imageoptim](https://imageoptim.com/mac) - ImageOptim makes images load faster.
5. [iterm2](https://iterm2.com/) - Terminal emulator.
6. google-chrome - The web browser.
7. [malwarebytes](https://www.malwarebytes.com/mac/) - Antivirus.
8. [macdown](https://macdown.uranusjr.com/) - Open source markdown editor.
9. [slack](https://slack.com/) - Work massages.
10. [transmit](https://transmissionbt.com/) - Torrent client.

++! And all of the [quick look extensions](https://github.com/sindresorhus/quick-look-plugins)

## Dependencies 

1. Install Xcode if run OSX

## Future Wishes

1. Adding whatsapp into installed apps.
2. Include Xcode at the apps script as a dependencies.
3. Install Docker client
4. Set all Iterm2 location and profile.


## License

The code is available under the [MIT license](LICENSE).