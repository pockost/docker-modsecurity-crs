#!/bin/sh
set -e

WORKDIR=${WORKDIR:-"/workdir"}
UPDATE_CRS=${UPDATE_CRS:-"false"}

cd ${WORKDIR}/

./util/upgrade.py --geoip

if [ "$UPDATE_CRS" == "true" ]
then
  ./util/upgrade.py --crs
fi


cp ${WORKDIR}/crs-setup.conf.example ${WORKDIR}/rules/00-crs-setup.conf
