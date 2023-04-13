#!/bin/bash -e
# See arch list here: https://en.wikipedia.org/wiki/CUDA
# The below are for Titan X/Xp, V100 and 1650
# TORCH_CUDA_ARCH_LIST="6.1;7.0;7.5" 
# Here for common archs
TORCH_CUDA_ARCH_LIST="Kepler;Kepler+Tesla;Maxwell;Maxwell+Tegra;Pascal;Volta;Turing"
FORCE_CUDA=1
BUILD_DIR="build"
if [ -d "$BUILD_DIR" ]; then rm -r $BUILD_DIR; fi
TORCH_CUDA_ARCH_LIST="${TORCH_CUDA_ARCH_LIST}" FORCE_CUDA="${FORCE_CUDA}" python -m pip install -e .[dev,all]
