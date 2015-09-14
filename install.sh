#!/bin/bash
#install screen,

apt-get -y  update
dpkg --add-architecture i386
apt-get -y install lib32gcc1

apt-get -y  update
apt-get -y install lib32stdc++6 # If running a 64bit OS
apt-get -y install libcurl4-gnutls-dev:i386
#useradd -m steam
chmod a+rw `tty`  # Note those are backticks, not single quotes
#su - steam 
mkdir ~/steamcmd && cd ~/steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
./steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login anonymous +force_install_dir /home/steam/steamapps/DST +app_update 343050 validate +quit

#mkdir ~/dst_lib && cd ~/dst_lib;
#wget https://github.com/dgibbs64/linuxgameservers/raw/master/Insurgency/dependencies/libc.so.6;
#wget https://github.com/dgibbs64/linuxgameservers/raw/master/Insurgency/dependencies/libpthread.so.0;
#wget https://github.com/dgibbs64/linuxgameservers/raw/master/Insurgency/dependencies/librt.so.1;


cd /home/steam/steamapps/DST/bin/
screen -S "DST Server" ./dontstarve_dedicated_server_nullrenderer
#screen -S "DST Server" bash -c 'LD_LIBRARY_PATH=~/dst_lib ./dontstarve_dedicated_server_nullrenderer';
