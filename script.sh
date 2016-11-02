#!/bin/bash

# messing around with 2.7.12

WD=`pwd`

mkdir localpython
wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz
wget https://pypi.python.org/packages/8b/2c/c0d3e47709d0458816167002e1aa3d64d03bdeb2a9d57c5bd18448fd24cd/virtualenv-15.0.3.tar.gz
tar -xvzf Python-*.tgz
tar -xvzf virtualenv-*.tar.gz
cd Python-2.7.12
./configure --prefix=`pwd ../localpython`
make
make install

cd $WD
./Python2.7.12/bin/python2 setup.py install
./Python2.7.12/bin/virtualenv --no-site-packages venv
. venv/bin/activate


