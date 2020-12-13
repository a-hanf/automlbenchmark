#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py autoxgboost small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autoxgboost medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autoxgboost large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py autoxgboost regression 1h10c
