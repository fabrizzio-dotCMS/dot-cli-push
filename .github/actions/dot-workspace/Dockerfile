FROM ubuntu
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

ENTRYPOINT ["./entrypoint.sh"]