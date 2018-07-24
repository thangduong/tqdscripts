#!/bin/bash

# wget  http://us.download.nvidia.com/tesla/384.81/nvidia-diag-driver-local-repo-ubuntu1604-384.81_1.0-1_amd64.deb
sudo dpkg -i ./nvidia-diag-driver-local-repo-ubuntu1604-384.81_1.0-1_amd64.deb
sudo apt-key add /var/nvidia-diag-driver-local-repo-384.81/7fa2af80.pub
sudo apt-get -y install -

sudo apt -y install gcc
#sudo ./cuda_8.0.61_375.26_linux-run --silent --toolkit --samples
#sudo ./cuda_9.0.176_384.81_linux-run --silent --driver --toolkit --samples
sudo ./cuda_9.2.148_396.37_linux.run --silent --driver --toolkit --samples
sudo apt-get -y install libcupti-dev
sudo apt-get -y install python3-pip python3-dev python-virtualenv
sudo mkdir /mnt/work
sudo chmod 777 /mnt/work
virtualenv --system-site-packages /mnt/work/env-tf
echo "export PATH=$PATH:/usr/local/cuda-8.0/bin" >> /mnt/work/env-tf/bin/activate
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64" >> /mnt/work/env-tf/bin/activate
sudo nvidia-smi -pm ENABLED
#tar -xzvf ./cudnn-8.0-linux-x64-v6.0.solitairetheme8
tar -xzvf ./cudnn-9.2-linux-x64-v7.1.solitairetheme8
sudo cp -rvf cuda/lib64/* /usr/local/cuda-8.0/lib64

source /mnt/work/env-tf/bin/activate
#pip3 install --upgrade pip
sudo pip3 install tensorflow-gpu

