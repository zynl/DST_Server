#!/bin/sh

echo "Killing DST session(s) ..."
screen -ls | grep DST | cut -d. -f1 | awk '{print $1}' | xargs kill
echo "Session killed, will now update DST..."
cd /home/steam/steamcmd/ && ./steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/steam/steamapps/DST +app_update 343050 validate +quit
echo "Update completed, will now start the server..."
su - steam
'~/start_dst.sh;
exit'
echo "Server successfully started!"
