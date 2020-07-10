#!/bin/bash

set -ev

mkdir output

osm2gtfs -c osm2gtfs/osm2gtfs/creators/ci_abidjan/config.json

cp ./data/ci-abidjan.zip ./output/abidjan.zip

cd output

python ../transitfeed/feedvalidator.py abidjan.zip || :

unzip abidjan.zip

cd ..
