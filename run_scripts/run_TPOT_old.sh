#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py TPOT small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py TPOT medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py TPOT large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py TPOT regression 1h10c
