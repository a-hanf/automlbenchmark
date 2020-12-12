#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py oboe small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py oboe medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py oboe large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py oboe regression 1h10c
