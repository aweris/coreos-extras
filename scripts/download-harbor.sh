#!/bin/bash -uxe

VERSION=v1.5.4
PACKAGE="harbor-offline-installer-${VERSION}"

# make directory
sudo mkdir -p /opt/bin

cd /opt

sudo curl -sL https://storage.googleapis.com/harbor-releases/${PACKAGE}.tgz -o /opt/${PACKAGE}.tgz

sudo tar -xzvf ${PACKAGE}.tgz && rm -rf ${PACKAGE}.tgz

## Fixin shebang for CoreOS
cd harbor && sudo sed -i 's%#!/usr/bin/python%#!/opt/bin/python%' prepare
