#!/bin/sh
/home/steam/steamcmd/steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/steam/steamapps/DST +app_update 343050 validate +quit
/home/steam/steamapps/DST/bin/dontstarve_dedicated_server_nullrenderer -only_update_server_mods
