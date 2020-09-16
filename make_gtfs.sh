#!/bin/bash

set -ev

mkdir output

osm2gtfs -c osm2gtfs/osm2gtfs/creators/ci_abidjan/config.json

cp ./data/ci-abidjan.zip ./output/abidjan.zip

./gtfsvtor/bin/gtfsvtor output/abidjan.zip

cp validation-results.html ./output/validation-results.html

cd output

unzip abidjan.zip

cd ..
