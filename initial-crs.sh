#!/bin/sh
set -e

CRS_BRANCH=${CRS_BRANCH:-"v3.0/master"}

mkdir -p /workdir
cd /workdir

if [ ! -d /workdir/.git ]
then
  git clone https://github.com/SpiderLabs/owasp-modsecurity-crs.git /workdir/
fi

git checkout $CRS_BRANCH

exec $@
