#!/bin/sh

first="000002"
last="000002"
CONFIG="/home/chenlj/Documents/Code/jadepixtel/v01-17-05/config/config.cfg"
RUNLIST="/home/chenlj/Documents/Code/jadepixtel/v01-17-05/runlist/runlist.csv"

alias js="jobsub -c $CONFIG -csv $RUNLIST"

for i in `seq $first $last`; do
  #js clustering $i
  #js hitmaker $i
  #js patternRecognition $i
  #js GBLAlign $i
  #js patternRecognition $i
  js GBLTrackFit $i
done
