#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py mlr3automl openml/s/269 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py mlr3automl openml/s/270 1h10c
