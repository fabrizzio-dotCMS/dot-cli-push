#!/bin/sh

for var in "$@"
do
    echo "$var"
done

  var=$(bash /dot-cli/run-java.sh "$@" )
  #echo "var: $var"
  echo "exit code: $?"
  echo "Quarkus log file"
  cat "${QUARKUS_LOG_FILE_PATH}"