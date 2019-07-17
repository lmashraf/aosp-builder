#!/bin/bash

# Set up workspace
git config --global user.email "aosp-builder@uhworks.org" && \
git config --global user.name "AOSP Builder" && \
git config --global color.ui auto

# Clean
rm -rf .repo

# Download the Android source tree
repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b android-9.0.0_r45
repo sync  -f --force-sync --no-clone-bundle --no-tags
