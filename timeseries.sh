#!/bin/bash
if [ -d "/data" ]; then
        cd /data
fi

echo "getting the file.."
wget -q https://raw.githubusercontent.com/academyofdata/data/master/timeseries.csv.gz
echo "unzipping it..."
gunzip timeseries.csv.gz
echo "splitting it..."
split -d -l 216000 --additional-suffix .csv timeseries.csv ts_part
