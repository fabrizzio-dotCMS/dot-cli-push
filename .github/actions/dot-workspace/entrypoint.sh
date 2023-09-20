#!/bin/sh

if [ ! "$CREATE_WORKSPACE" = "true" ]; then
     echo "Skipping workspace creation";
     exit 0;
fi

WORKSPACE_FILE=$BASE_PATH/$DOT_WORKSPACE_YML
echo "Workspace file: $WORKSPACE_FILE"

workspace_file_content='name: default
version: 1.0.0
description: "DO NOT ERASE ME !!! I am a marker file required by dotCMS CLI."'

if [ ! -f "$WORKSPACE_FILE" ]; then
      echo "$workspace_file_content" >> "$WORKSPACE_FILE";
      cat "$WORKSPACE_FILE";
fi

FILES_PATH=$BASE_PATH/$FILES_NAME_SPACE
FILES_PATH=$(echo "$FILES_PATH" | sed 's,//,\/,g')

echo "Files path: $FILES_PATH"
if [ ! -f "$FILES_PATH" ]; then
      mkdir -p "$FILES_PATH";
fi

CONTENT_TYPES_PATH=$BASE_PATH/$CONTENT_TYPES_NAME_SPACE
CONTENT_TYPES_PATH=$(echo "$CONTENT_TYPES_PATH" | sed 's,//,\/,g')

echo "Content types path: $CONTENT_TYPES_PATH"
if [ ! -f "$CONTENT_TYPES_PATH" ]; then
      mkdir -p "$CONTENT_TYPES_PATH";
fi

SITES_PATH=$BASE_PATH/$SITES_NAME_SPACE
SITES_PATH=$(echo "$SITES_PATH" | sed 's,//,\/,g')

echo "Sites path: $SITES_PATH"
if [ ! -f "$SITES_PATH" ]; then
      mkdir -p "$SITES_PATH";
fi