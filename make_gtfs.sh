#!/bin/bash

set -ev

mkdir output

osm2gtfs -c 2021_conf.json

cp ./data/ci-abidjan.zip ./output/abidjan.zip

./gtfsvtor/bin/gtfsvtor output/abidjan.zip

cp validation-results.html ./output/validation-results.html

cd output

unzip abidjan.zip

cd ..
