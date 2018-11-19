#!/bin/bash -uxe

VERSION=1.23.1
PACKAGE=docker-compose-`uname -s`-`uname -m`

# make directory
mkdir -p /opt/bin

curl -sL https://github.com/docker/compose/releases/download/${VERSION}/${PACKAGE} -o /opt/bin/docker-compose

chmod +x /opt/bin/docker-compose
