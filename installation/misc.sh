#!/usr/bin/env bash

# Elgato Stream Deck Mini configuration software
curl https://developer.elgato.com/documentation/stream-deck/distributiontool/DistributionToolMac.zip --output DistributionToolMac.zip
unzip DistributionToolMac.zip
cp DistributionTool /usr/local/bin/DistributionTool
chmod 755 /usr/local/bin/DistributionTool
rm -rf DistributionTool DistributionToolMac.zip __MACOSX
