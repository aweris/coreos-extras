#!/bin/bash -uxe

VERSION=1.23.1
PACKAGE=docker-compose-`uname -s`-`uname -m`

# make directory
sudo mkdir -p /opt/bin

sudo curl -sL https://github.com/docker/compose/releases/download/${VERSION}/${PACKAGE} -o /opt/bin/docker-compose

sudo chmod +x /opt/bin/docker-compose
