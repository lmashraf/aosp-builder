#!/bin/bash

echo "Syncing Sources ..."

# Download the Android source tree
cd /aosp
# repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b android-9.0.0_r45
# repo sync  -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)

echo "repo init ..."
echo "repo sync ..."