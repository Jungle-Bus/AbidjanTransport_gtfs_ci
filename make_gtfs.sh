#!/bin/bash

set -ev

wget http://download.geofabrik.de/africa/ivory-coast-latest.osm.pbf --no-verbose --output-document=data.osm.pbf 2>&1

osmium tags-filter data.osm.pbf type=route_master type=route -o pt_data.osm.pbf

mkdir output

cd prism

poetry run python prism/cli.py ../pt_data.osm.pbf --outdir ../output/ --loglevel=WARNING --config ../2021_conf.json

cd ..

./gtfsvtor/bin/gtfsvtor output/output_gtfs.zip

cp validation-results.html ./output/validation-results.html

cd output

unzip output_gtfs.zip

cd ..
