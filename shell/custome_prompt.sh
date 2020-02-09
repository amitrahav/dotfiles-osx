ONLINE="◉"
OFFLINE="⦿"
  if [[ -f ~/.offline ]]; then
    export BULLETTRAIN_CUSTOM_BG="red"
    export BULLETTRAIN_CUSTOM_MSG="$OFFLINE"
  else
    export BULLETTRAIN_CUSTOM_BG="green"
    export BULLETTRAIN_CUSTOM_MSG="$ONLINE"
  fi

export BULLETTRAIN_PROMPT_ORDER=(
  custom
  time
  status
  context
  dir
  screen
  virtualenv
  nvm
  aws
  git
)
