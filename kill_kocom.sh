#!/bin/sh
ps ax | grep kocom2.py | grep -v grep | awk '{print "kill " $1}'|sh
