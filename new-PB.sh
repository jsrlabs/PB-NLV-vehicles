#!/bin/bash

if [ ! $# == 2 ]; then
  echo "Usage: $0 old_name_of_vehicle_in_aircraft/_directory new"
  exit
fi

cp -a aircraft/$1/ aircraft/$2
mv aircraft/$2/$1.xml aircraft/$2/$2.xml
rm aircraft/$2/$1.csv
rm aircraft/$2/$1.pdf
