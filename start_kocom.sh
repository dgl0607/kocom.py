#!/bin/sh
mkdir logs 2>/dev/null
nohup python3 -u kocom2.py > logs/kocom2.log 2>&1 & sleep 1 ; tail -100f logs/kocom2.log
