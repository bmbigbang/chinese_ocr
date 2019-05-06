#!/usr/bin/env bash
#pip install numpy scipy matplotlib pillow
#pip install easydict opencv-python keras h5py PyYAML
#pip install cython==0.24

# for gpu
#pip install tensorflow-gpu==1.3.0
#chmod +x ./ctpn/lib/utils/make.sh
#cd ./ctpn/lib/utils/ && ./make.sh

# for cpu
# pip install tensorflow==1.3.0

wget https://repo.anaconda.com/archive/Anaconda2-2019.03-Linux-x86_64.sh
sh Anaconda2-2019.03-Linux-x86_64.sh

# if conda is not initialized duding setup
# eval "$(/home/vagrant/anaconda2/bin/conda shell.conda hook)"

conda install tensorflow=1.3.0 keras=2.0.8 cython=0.24 opencv=3.4.1  matplotlib

pip install easydict

cp -R /vagrant/ ~/chinese_ocr
cd ~/chinese_ocr
chmod +x ./ctpn/lib/utils/make_cpu.sh
cd ./ctpn/lib/utils/ && ./make_cpu.sh
