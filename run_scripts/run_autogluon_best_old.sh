#!/bin/sh

sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon_bestquality small 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon_bestquality medium 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon_bestquality large 1h10c
sudo env PATH="$PATH" python3 runbenchmark.py AutoGluon_bestquality regression 1h10c