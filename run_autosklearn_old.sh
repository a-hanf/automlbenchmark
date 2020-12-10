#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py autosklearn small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autosklearn regression 1h10c
