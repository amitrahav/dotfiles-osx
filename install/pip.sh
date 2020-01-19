#!/bin/bash


if test ! $(which python)
then
  echo "Activiting Python Enviorment"
  source $(which python)/venv/bin/activate

  pip install virtualenvwrapper

fi