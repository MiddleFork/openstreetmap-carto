#!/bin/sh
docker volume create osm-shapes
docker run -v osm-shapes:/osm-shapes --name osm-shapes-volume busybox true
docker cp data/. osm-shapes-volume:/osm-shapes
