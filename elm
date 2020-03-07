#!/usr/bin/env sh

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )";

# Execute Elm from the docker instance and give the arguments
docker run -it --rm \
-v "$script_path:/code" \
-w "/code" \
-e "HOME=/tmp" \
-u $UID:$GID \
-p 8000:8000 \
codesimple/elm:0.19 ${@:1}