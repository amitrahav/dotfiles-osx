#!/bin/bash

install_pip(){
  easy_install pip
}

if [[ sw_vers -productVersion -gt 10.13 ]]; then
   sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
fi  
  

if [ -x "$(command  -v python)" ]; then
  echo "Activiting Python Enviorment"
  source $(which python)/venv/bin/activate
  
  if ! [ -x "$(command  -v pip3)" ]; then
    install_pip
  fi
  
  pip3 install pyenv
  pip3 install virtualenvwrapper

else
  brew install python3
  source .
fi