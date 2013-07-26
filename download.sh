#!/bin/sh
set -e

wget --recursive http://community.amstat.org/StatisticsWithoutBorders/
find community.amstat.org/ -type f -regex '^[^.]*$' -execdir mv {} {}.html \;
