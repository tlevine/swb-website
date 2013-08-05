#!/bin/sh
set -e

wget http://community.amstat.org/StatisticsWithoutBorders/AboutSWB/Positions
wget http://community.amstat.org/StatisticsWithoutBorders/AboutSWB/Officers1

wget --recursive http://community.amstat.org/StatisticsWithoutBorders/
find community.amstat.org/ -type f -regex '^[^.]*$' -execdir mv {} {}.html \;
