#!/bin/bash

# initialize and pull the tinc submodule, and build the dependencies.
git submodule add https://github.com/AlloSphere-Research-Group/tinc.git
git submodule update --recursive --init
cd tinc
./build_deps.sh

# remove init.sh as it is no longer needed
rm init.sh
