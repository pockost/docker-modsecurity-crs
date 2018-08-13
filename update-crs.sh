#!/bin/sh
set -e

cd /workdir

./util/upgrade.py --crs --geoip
cp /workdir/crs-setup.conf.example /workdir/rules/crs-setup.conf
