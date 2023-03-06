#!/bin/sh

rm -rf build

flutter clean

flutter build web --web-renderer auto
