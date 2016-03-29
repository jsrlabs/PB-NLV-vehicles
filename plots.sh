#!/bin/bash

if [ ! $# == 1 ]; then
  echo "Usage: $0 name_of_vehicle_in_aircraft/_directory"
  exit
fi

src/JSBSim scripts/PBScript.xml --outputlogfile=aircraft/$1/$1.csv --aircraft=$1 --initfile=LC39

src/utilities/prep_plot aircraft/$1/$1.csv --plot=data_plot/orbit.xml  | gnuplot | ps2pdf - aircraft/$1/$1.pdf && evince aircraft/$1/$1.pdf &
