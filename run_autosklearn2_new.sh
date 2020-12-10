#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 openml/s/269 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn2 openml/s/270 1h10c
