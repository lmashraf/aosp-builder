#!/bin/bash

# Set up the environment
. build/envsetup.sh

# Choose a target to build
lunch ${LUNCH_TARGET}

# Build the code
USE_CCACHE=1 CCACHE_DIR=ccache m
