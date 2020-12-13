#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 regression 1h10c
