#!/bin/bash

sudo apt -y install vnc4server
sudo apt -y install fvwm
mkdir ~/.fvwm
cp fvwm2rc ~/.fvwm/.fvwm2rc
sudo cp vnc /bin/vnc
vnc
echo "vncconfig -set BlackListTimeout=0 -set BlackListThresholds=1000000" >> ~/.vnc/xstartup

