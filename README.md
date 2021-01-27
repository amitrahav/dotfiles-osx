# Amit Rahav's Dotfiles

A worm and safe place for all of my dotfiles.

Basicity a personal version of [Nick Plekhanov's Dotfiles](https://github.com/nicksp/dotfiles).

Running on my OSX mojave at the moment, most parts was tested on Sierra, High sierra and Catalina.

## TL;DR

All off my os settings.

FAVORITES:
+ tiny-care-terminal
+ Iterm2 + oh-my-zsh autocomplete and theme!

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
    1. [Bash-compilation2](https://github.com/scop/bash-completion) - set of bash compilation
    2. [Moreutils](https://joeyh.name/code/moreutils/) - Collection of tools that nobody wrote when UNIX was young
    3. [Autojump](https://github.com/joelthelion/autojump) - a faster way to navigate your filesystem.
    4. [Ponysay](https://github.com/erkin/ponysay) - enables pony to speak.
    5. [Gnu-sed](https://www.gnu.org/software/sed/) - GNU implementation of the famous stream editor
    6. [Grep](https://www.gnu.org/software/grep/) - Gnu style CLI search tool
    7. [Tree](http://mama.indstate.edu/users/ice/tree/) - A directory listing utility that produces a depth indented listing of files.
    8. [Git-extras]() -
    9. [Hub](https://hub.github.com/) - use github from command line.
    10. source-highlight - syntax highlighter.
    11. [The_silver_searcher](https://geoff.greer.fm/ag/) - Code-search similar to ack.
    12. [Wifi-password](https://github.com/rauchg/wifi-password) - People ask you for the Wi-Fi password. Answer quickly!
    13. [Zlib](https://zlib.net/) - General-purpose lossless data-compression library.
    14. python3 - install system-wide python3, only for using virtualenvwrapper.
    15. [Ffmpeg](https://www.ffmpeg.org/) - A complete, cross-platform solution to record, convert and stream audio and video.
    16. [Imagemagick](https://imagemagick.org/index.php) - Use ImageMagick® to create, edit, compose, or convert bitmap images. It can read and write images in a variety of formats (over 200) including PNG, JPEG, GIF, HEIC, TIFF, DPX, EXR, WebP, Postscript, PDF, and SVG
    17. [Heruko](https://devcenter.heroku.com/articles/heroku-cli) - The Heroku Command Line Interface (CLI) makes it easy to create and manage your Heroku apps directly from the terminal. It’s an essential part of using Heroku.
    18. [Battery](https://github.com/Goles/Battery) - Bash script to display your Laptop's battery status on the terminal.
    19. [Fuck] (https://github.com/nvbn/thefuck): Correct your previous command. 
    
### instal/brew-cask.sh

Homebrew cask is an extension of the homebrew functionality.

Install some awesome extensions:
1. [Gyazo](https://gyazo.com/) - Video screen recorder.
2. [Spectacle](https://www.spectacleapp.com/) - Resize windows easily.
3. [Imagealpha](https://pngmini.com/) - Reduces file sizes of 24-bit PNG files (including alpha transparency).
4. [Imageoptim](https://imageoptim.com/mac) - ImageOptim makes images load faster.
5. [Iterm2](https://iterm2.com/) - Terminal emulator.
6. google-chrome - The web browser.
7. [Malwarebytes](https://www.malwarebytes.com/mac/) - Antivirus.
8. [Macdown](https://macdown.uranusjr.com/) - Open source markdown editor.
9. [Slack](https://slack.com/) - Work massages.
10. [Transmit](https://transmissionbt.com/) - Torrent client.
11. [Microsoft-office](https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a)
12. [transmission](https://transmissionbt.com/) - torrent client

++! And all of the [quick look extensions](https://github.com/sindresorhus/quick-look-plugins)

### install/npm.sh

1. Installing  NVM if not exists.
2. Setting stable node latest release as system default.
3. Installing those npm packages on the default npm global installation:
    1. [Diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - sexy git diffs
    2. [Git-recent](https://github.com/paulirish/git-recent) - Type `git recent` to see your recent local git branches
    3. [Git-open](https://github.com/paulirish/git-open) - Type `git open` to open the GitHub page or website for a repository
    4. [Gulp-cli](https://gulpjs.com/) - Automate and enhance your workflow
    5. [Servedir](https://github.com/remy/servedir) - servedir is a simple Node web server for offline development and testing: running servedir from a directory will create a quick local web server.
    6. [Http-server](https://github.com/http-party/http-server) - a simple, zero-configuration command-line http server.
    7. [Webpack](https://webpack.js.org/) - a module bundler for fast and easy dev time.
    8. [Eslint](https://eslint.org/) - ESLint is a tool for identifying and reporting on patterns found in ECMAScript/JavaScript code. 
    9. [Lodash](https://lodash.com/) - A modern JavaScript utility library delivering modularity, performance & extras.
    10. [MomentJs](https://momentjs.com/) - Parse, validate, manipulate, and display dates and times in JavaScript.
    11. [Async](http://caolan.github.io/async/v3/) - utility module which provides straight-forward, powerful functions for working with asynchronous JavaScript
    12. [Axios](https://github.com/axios/axios) - Promise based HTTP client for the browser and node.js

    -- 
    
    13. [Vue](https://vuejs.org/) + [vue-cli](https://cli.vuejs.org/)- The Progressive JavaScript Framework    
    14. [Nuxt](https://nuxtjs.org/) - Vue.js Meta Framework to create complex, fast & universal web applications quickly.

    -- 

    15. [Chalk](https://github.com/chalk/chalk) - Terminal string styling done right
    16. [Trash-cli](https://github.com/sindresorhus/trash-cli) - Move files and folders to the trash

### install/pip.sh

Install python3 if not already installed, install [pip](https://pip.pypa.io/en/stable/) for package management and [virutalenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/) for managing versions.

## Dependencies 

1. Install Xcode if run OSX

## Future Wishes

1. Adding whatsapp into installed apps.
2. Include Xcode at the apps script as a dependencies.
3. Install Docker client
4. Set all Iterm2 location and profile.
6. Install all VScode plugins


## License

The code is available under the [MIT license](LICENSE).