#!/bin/sh

rm -rf build

flutter clean

flutter build web

flutter build web --web-renderer canvaskit
