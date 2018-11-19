#!/bin/bash -uxe

VERSION=2.7.13.2715
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.12-402695

# make directory
sudo mkdir -p /opt/bin

cd /opt

# Download python
sudo wget http://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
sudo tar -xzvf ${PACKAGE}.tar.gz

# Install Python
sudo mv ${PACKAGE} apy && cd apy && sudo ./install.sh -I /opt/python/

sudo ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
sudo ln -sf /opt/python/bin/pip /opt/bin/pip
sudo ln -sf /opt/python/bin/python /opt/bin/python
sudo ln -sf /opt/python/bin/python /opt/bin/python2
sudo ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv

# Clean-up installer
sudo rm -rf apy ${PACKAGE}.tar.gz
