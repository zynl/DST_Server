#!/bin/bash

screen -dmS "DST Server" sh -c "cd /home/steam/steamapps/DST/bin; ./dontstarve_dedicated_server_nullrenderer"
screen -dmS "DST_caves Server" sh -c "cd /home/steam/steamapps/DST/bin; ./dontstarve_dedicated_server_nullrenderer -conf_dir DST_Cave"
#/usr/bin/screen -S "DST" bash -c 'LD_LIBRARY_PATH=~/dst_lib ./dontstarve_dedicated_server_nullrenderer -console'
