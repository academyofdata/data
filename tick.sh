#!/bin/bash

if [ $# -eq 0 ]
  then
        echo "No arguments supplied. Please specify the csv file to take lines from"
        exit 1
fi

LINES=1000
START=2
MAX=`wc -l $1 | awk '{print $1}'`
DELAY=6

echo "Starting at $START, with increment $LINES up to $MAX"
while [ $START -lt $MAX ]
do
        NEXT=$((START + LINES))
        sed -n "${START},${NEXT}p" $1 | awk -F"," '{print "INSERT INTO  metro_systems.w_ts(station_id,event_time,temperature) VALUES('\''"  $1 "'\'','\''" $2 "'\''," $3 ");" }' > batch.sql
	cqlsh < batch.sql
        START=$NEXT
        sleep $DELAY
done
