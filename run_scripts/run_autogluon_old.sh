#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon regression 1h10c
