#!/bin/bash

set -ev

# install GTFSVtor
wget https://github.com/mecatran/gtfsvtor/releases/download/v0.1.1/gtfsvtor.zip
unzip gtfsvtor.zip

# install prism
git clone --branch=ci https://github.com/Jungle-Bus/prism

cd prism

poetry install