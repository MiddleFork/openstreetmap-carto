#!/bin/sh
docker volume create osm-shapes
docker run -v osm-shapes:/osm-shapes --name helper busybox true
docker cp data/. helper:/osm-shapes
docker rm helper
