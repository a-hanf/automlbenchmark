#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py H2OAutoML small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py H2OAutoML medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py H2OAutoML large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py H2OAutoML regression 1h10c
