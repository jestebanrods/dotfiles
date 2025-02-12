#!/bin/bash

RSYNC_CMD="rsync"
PARAMS=()
SYNCIGNORE_FILE=".rsyncignore"

while [[ $# -gt 0 ]]; do
    case $1 in
    *)
        PARAMS+=("$1")
        ;;
    esac
    shift
done

build_excludes() {
    EXCLUDES=""

    if [ -f "$SYNCIGNORE_FILE" ]; then
        while IFS= read -r line; do
            if [[ -n "$line" && ! "$line" =~ ^# ]]; then
                EXCLUDES="$EXCLUDES --exclude=$line"
            fi
        done <"$SYNCIGNORE_FILE"
    fi

    EXCLUDES="$EXCLUDES --exclude=.rsyncignore"

    echo "$EXCLUDES"
}

EXCLUDES=$(build_excludes)
RSYNC_CMD="$RSYNC_CMD ${PARAMS[@]}"

if [[ -n "$EXCLUDES" ]]; then
    echo "Se detectado archivo .syncignore"
    RSYNC_CMD="$RSYNC_CMD$EXCLUDES"
    echo "Comando rsync final: $RSYNC_CMD"
fi

eval "$RSYNC_CMD"
