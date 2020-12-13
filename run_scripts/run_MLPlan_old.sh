#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py MLPlan small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py MLPlan medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py MLPlan large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py MLPlan regression 1h10c
