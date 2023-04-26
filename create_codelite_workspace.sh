#!/bin/bash

# Create the Debug build directory and generate the CodeLite workspace
cmake -S ./ -B ./build/debug -G "CodeLite - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..

# Create the Release build directory and generate the CodeLite workspace
cmake -S ./ -B ./build/release -G "CodeLite - Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ..