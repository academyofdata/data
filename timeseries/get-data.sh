#!/bin/bash
ODIR="/tmp/timeseries"
sudo mkdir -p /data/timeseries 2>>/dev/null
if [ -d "/data" ]; then
        ODIR="/data/timeseries"
else
        mkdir -p /tmp/timeseries
fi
# use wget to download the files
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-aa.csv.gz -O $ODIR/ts-aa.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ab.csv.gz -O $ODIR/ts-ab.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ac.csv.gz -O $ODIR/ts-ac.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ad.csv.gz -O $ODIR/ts-ad.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ae.csv.gz -O $ODIR/ts-ae.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-af.csv.gz -O $ODIR/ts-af.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ag.csv.gz -O $ODIR/ts-ag.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ah.csv.gz -O $ODIR/ts-ah.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-ai.csv.gz -O $ODIR/ts-ai.csv.gz
sudo wget https://raw.githubusercontent.com/academyofdata/data/master/timeseries/ts-aj.csv.gz -O $ODIR/ts-aj.csv.gz

sudo gunzip -f $ODIR/ts-aa.csv.gz
sudo gunzip -f $ODIR/ts-ab.csv.gz
sudo gunzip -f $ODIR/ts-ac.csv.gz
sudo gunzip -f $ODIR/ts-ad.csv.gz
sudo gunzip -f $ODIR/ts-ae.csv.gz
sudo gunzip -f $ODIR/ts-af.csv.gz
sudo gunzip -f $ODIR/ts-ag.csv.gz
sudo gunzip -f $ODIR/ts-ah.csv.gz
sudo gunzip -f $ODIR/ts-ai.csv.gz
sudo gunzip -f $ODIR/ts-aj.csv.gz
