#!/bin/sh
set -e

CRS_BRANCH=${CRS_BRANCH:-"v3.0/master"}
WORKDIR=${WORKDIR:-"/workdir"}

mkdir -p ${WORKDIR}
cd ${WORKDIR}

if [ ! -d ${WORKDIR}/.git ]
then
  git clone https://github.com/SpiderLabs/owasp-modsecurity-crs.git ${WORKDIR}/
fi

git checkout $CRS_BRANCH

exec $@
