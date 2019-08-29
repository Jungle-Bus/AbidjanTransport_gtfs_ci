#!/bin/bash

set -ev

mkdir output

osm2gtfs -c config.json

cp ./data/abidjan.zip ./output/abidjan.zip

cd output

python ../transitfeed-1.2.16/feedvalidator.py abidjan.zip || :

unzip abidjan.zip

cd ..
