

rm cuda-repo-ubuntu1804_10.0.130-1_amd64.deb* && wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update && sudo apt-get install -y cuda-10-0
/snap/bin/gsutil cp gs://akis-mlbox/cudnn-10.0-linux-x64-v7.5.0.56.tgz .
tar xvzf cudnn-10.0-linux-x64-v7.5.0.56.tgz
sudo cp cuda/lib64/* /usr/local/cuda/lib64/
sudo cp cuda/include/cudnn.h /usr/local/cuda/include/
rm -rf ~/cuda; rm -f cudnn-10.0-linux-x64-v7.5.0.56.tgz
sudo apt-get install -y python3-dev python3-pip libcupti-dev
sudo pip3 install tensorflow-gpu==1.13.1
/snap/bin/gsutil cp gs://akis-mlbox/tensorflow_check.py . && python3 tensorflow_check.py

