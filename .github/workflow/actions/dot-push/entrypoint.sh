#!/bin/sh

  var=$(bash /dot-cli/run-java.sh "$@" )
  echo "var: $var"
  echo "exit code: $?"

  echo "cat log file"
  cat "${QUARKUS_LOG_FILE_PATH}"

  echo "done!"