#!/bin/bash
# NOTE: Make sure you either create "/plex" or replace with your own folder
docker run --name=plex -d \
    --privileged=true \
    -p 32400:32400 \
    -v /plex:/p \
ventz/plex
