#!/bin/bash

set -ev

# install GTFSVtor
wget https://github.com/mecatran/gtfsvtor/releases/download/v0.1.1/gtfsvtor.zip
unzip gtfsvtor.zip

#install transitfeed
git clone --branch=python3 https://github.com/pecalleja/transitfeed.git

cd transitfeed

pip install -e .

cd ..

# install osm2gtfs
git clone --branch=new_ci https://github.com/Jungle-Bus/osm2gtfs

cd osm2gtfs

pip install -e .
