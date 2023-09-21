#!/bin/sh
  echo "Running dot-push action entrypoint.sh"
  for word in "$@"; do echo "$word"; done

  bash /dot-cli/run-java.sh "$@"
  exit_code=$?

  # Export the exit code as an environment variable
  export DOT_CLI_EXIT_CODE=$exit_code
  echo "exit code: $DOT_CLI_EXIT_CODE"

  echo "Quarkus log file contents:"
  cat "${QUARKUS_LOG_FILE_PATH}"

  export LOL="LOL!!"