#!/usr/bin/env bash
set -e

MAILCATCHER_SMTP_PORT=${MAILCATCHER_SMTP_PORT:-1025}
MAILCATCHER_HTTP_PORT=${MAILCATCHER_HTTP_PORT:-1080}

appInit () {
    echo 'Configure MailCatcher ...'
}

appStart () {
  appInit

  echo 'Start MailCatcher Server ...'
  mailcatcher --smtp-ip=0.0.0.0 --smtp-port=${MAILCATCHER_SMTP_PORT} \
    --http-ip=0.0.0.0 --http-port=${MAILCATCHER_HTTP_PORT} \
    --foreground
}

appHelp () {
  echo "Available options:"
  echo " start          - Starts the MailCatcher Server (default)"
  echo " init           - Initialize the MailCatcher but don't start it."
  echo " help           - Displays the help"
  echo " [command]      - Execute the specified linux command eg. bash."
}

case "$1" in
  start)
    appStart
    ;;
  init)
    appInit
    ;;
  help)
    appHelp
    ;;
  *)
    if [ -x $1 ]; then
      $1
    else
      prog=$(which $1)
      if [ -n "${prog}" ] ; then
        shift 1
        $prog $@
      else
        appHelp
      fi
    fi
    ;;
esac

exit 0
