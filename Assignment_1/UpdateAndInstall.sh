#!/bin/bash

mkdir /users/Shree777/miniconda3

#-y is to automatically denote yes
sudo apt-get update -y

sudo apt-get install htop screen -y

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh

bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

rm -rf ~/miniconda3/miniconda.sh

if [ -f /users/Shree777/miniconda3/bin/conda ];
then
    /users/Shree777/miniconda3/bin/conda init bash
else
    echo "Not install"
fi
