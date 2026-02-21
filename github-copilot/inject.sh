#!/bin/sh
set -e

DIR="$(cd "$(dirname "$0")" && pwd)/_common"
MODES="thin prod spec note explore-jp"

if [ -z "$1" ]; then
  echo "Usage: $0 <mode>"
  echo "Modes: $MODES"
  exit 1
fi

MODE="$1"
FILE="$DIR/../_common/${MODE}.txt"

if [ ! -f "$FILE" ]; then
  echo "Unknown mode: $MODE"
  echo "Modes: $MODES"
  exit 1
fi

cat "$DIR/../_common/base.txt" "$FILE" | pbcopy
echo "Copied: base + $MODE"
