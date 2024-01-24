#!/bin/bash

mkdir /users/Shree777/miniconda3

#-y is to automatically denote yes
sudo apt-get update -y

sudo apt-get install htop screen -y

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh

bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

rm -rf ~/miniconda3/miniconda.sh

if [ -f path/to/users/Shree777/miniconda3/bin/conda ];
then
    /path/to/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init bash
fi
source ~/.bashrc

conda --version

conda create --name MyPython python=3.9

conda activate MyPython

conda install -c conda-forge notebook

conda install -c conda-forge nb_conda_kernels

conda install nb_conda

conda env export > requirements.yml
