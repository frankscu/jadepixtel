#!/bin/sh

first="000001"
last="000001"
CONFIG="/home/chenlj/ilcsoft/jadepixtel/v01-19-02/config/config.cfg"
RUNLIST="/home/chenlj/ilcsoft/jadepixtel/v01-19-02/runlist/runlist.csv"

alias js="jobsub -c $CONFIG -csv $RUNLIST"

for i in `seq $first $last`; do
  #js converter $i
  #js clustering $i
  #js hitmaker $i
  #js  aligngbl $i
  js  trackgbltriplet $i 
done
