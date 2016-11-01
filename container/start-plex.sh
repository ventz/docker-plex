#!/bin/bash
# Needed to create Library and other dirs under "/var/lib/plexmediaserver"
/etc/init.d/plexmediaserver start
/etc/init.d/plexmediaserver stop
 
# Make sure permissions are correct.
chown -R plex:plex /p/*
 
# Move Files
cp -Rf /p/Plug-ins/* /var/lib/plexmediaserver/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/.
cp -f /p/Preferences.xml /var/lib/plexmediaserver/Library/Application\ Support/Plex\ Media\ Server/.
 
# Start Real Plex server
su -s /bin/sh plex -c ". /etc/sysconfig/PlexMediaServer; cd /usr/lib/plexmediaserver; ./Plex\ Media\ Server"
