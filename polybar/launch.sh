#!/usr/bin/env bash

#Make sure polybar is not running
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar mybar

echo "Bar Launched..."
