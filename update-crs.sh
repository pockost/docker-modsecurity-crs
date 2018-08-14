#!/bin/sh
set -e

cd /workdir

UPDATE_CRS=${UPDATE_CRS:-"false"}

./util/upgrade.py --geoip

if [ "$UPDATE_CRS" == "true" ]
then
  ./util/upgrade.py --crs
fi


cp /workdir/crs-setup.conf.example /workdir/rules/00-crs-setup.conf
