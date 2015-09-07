#!/bin/bash
cd /home/steam/steamapps/DST/bin
/usr/bin/screen -S "DST" bash -c 'LD_LIBRARY_PATH=~/dst_lib ./dontstarve_dedicated_server_nullrenderer -console'
