#!/usr/bin/env bash


set -e # Terminate script when something goes wrong

if [ -z "$1" ]; then
    echo "Usage:"
    echo ""
    echo "  ./watch.sh SLEEP_TIME COMMAND..."
    exit 1
else
    echo "no match"
fi

sleep_time="$1"
shift

while true; do
    clear
    "$@"
    sleep "$sleep_time"
done
