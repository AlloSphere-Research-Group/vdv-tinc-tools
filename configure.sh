#!/bin/bash
CMAKE_BINARY=cmake

(
  mkdir -p build
  cd build
  mkdir -p release
  cd release
  $CMAKE_BINARY -DCMAKE_BUILD_TYPE=Release -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
)

# Configure debug build
(
  mkdir -p build
  cd build
  mkdir -p debug
  cd debug
  $CMAKE_BINARY -DCMAKE_BUILD_TYPE=Debug -Wno-deprecated -DBUILD_EXAMPLES=0 ../..
)

