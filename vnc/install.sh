#!/bin/bash

sudo apt -y install vnc4server
mkdir ~/.fvwm
cp fvwm2rc ~/.fvwm/.fvwm2rc
sudo cp vnc /bin/vnc
