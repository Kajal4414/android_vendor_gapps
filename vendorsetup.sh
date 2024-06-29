#!/bin/bash

EXPECTED_SHA256="a2de13237e27901b83cb5ed042129d2cbf533634679bf63b8ff0c05ce043f397"

# Concatenate GmsCorePart* files into GmsCore.apk
cat temp/GmsCorePart* >product/priv-app/GmsCore/GmsCore.apk || { echo "Error: Concatenation failed."; }

# Calculate SHA256 hash after concatenation
NEW_SHA256=$(sha256sum product/priv-app/GmsCore/GmsCore.apk | awk '{print $1}')

# Compare hashes
if [ "$EXPECTED_SHA256" == "$NEW_SHA256" ]; then
    rm -rf temp && echo "Temp directory deleted."
else
    echo "Error: SHA256 hash does not match!"
fi
