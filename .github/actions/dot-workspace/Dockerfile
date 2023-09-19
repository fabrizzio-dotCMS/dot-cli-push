FROM ubuntu:20.04
LABEL authors="fabrizzioaraya"

ENV DOT_WORKSPACE_YML=".dot-service.yml"
ENV FILES_NAME_SPACE="/files/"
ENV CONTENT_TYPES_NAME_SPACE="/content-types/"
ENV LANGS_NAME_SPACE="/languages/"
ENV SITES_NAME_SPACE="/sites/"
ENV DEFAULT_WORKSPACE_PATH="/github/workspace/"
ENV ENTRYPOINT="entrypoint.sh"

# Set environment variables based on inputs
ENV BASE_PATH=${INPUT_PATH:-$DEFAULT_WORKSPACE_PATH}
ENV CREATE_WORKSPACE=${INPUT_CREATE_WORKSPACE:-"true"}

RUN if ![ "$CREATE_WORKSPACE" -eq "true" ]; then \
     echo "Skipping workspace creation"; \
     exit 0; \
    fi

ARG WORKSPACE_FILE=$BASE_PATH/$DOT_WORKSPACE_YML
RUN if ![ -f "$WORKSPACE_FILE" ]; then \
      COPY ${DOT_WORKSPACE_YML} ${BASE_PATH}; \
    fi

ARG FILES_PATH=$BASE_PATH/$FILES_NAME_SPACE
RUN if ![ -f "$FILES_PATH" ]; then \
      mkdir -p "$FILES_PATH"; \
    fi

ARG CONTENT_TYPES_PATH=$BASE_PATH/$CONTENT_TYPES_NAME_SPACE
RUN if ![ -f "$CONTENT_TYPES_PATH" ]; then \
      mkdir -p "$CONTENT_TYPES_PATH"; \
    fi

ARG SITES_PATH=$BASE_PATH/$SITES_NAME_SPACE
RUN if ![ -f "$SITES_PATH" ]; then \
      mkdir -p "$SITES_PATH"; \
    fi

CMD ["echo", "We're done!"]