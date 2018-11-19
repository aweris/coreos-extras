#!/bin/bash -uxe

VERSION=v1.5.4
PACKAGE="harbor-offline-installer-${VERSION}"
EXTRA_PARAMS="--with-clair"

# make directory
mkdir -p /opt/bin

cd /opt

curl -sL https://storage.googleapis.com/harbor-releases/${PACKAGE}.tgz -o /opt

tar -xzvf ${PACKAGE}.tgz && rm -rf ${PACKAGE}.tgz

## Fixin shebang for CoreOS
cd harbor && sed -i 's%#!/usr/bin/python%#!/opt/bin/python%' prepare
