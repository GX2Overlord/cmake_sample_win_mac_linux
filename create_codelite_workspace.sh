#!/bin/bash

# Create the Debug build directory and generate the CodeLite workspace
mkdir build
cd build
mkdir debug
cd debug
cmake -G "CodeLite - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
cd ..
cd ..

# Create the Release build directory and generate the CodeLite workspace
cd build
mkdir release
cd release
cmake -G "CodeLite - Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ..
cd ..
cd ..