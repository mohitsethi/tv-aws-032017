sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get -y install linux-image-extra-$(uname -r) aufs-tools
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -k -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
# add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
sudo add-apt-repository \
   "deb https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce

# Validate services is running
# `sudo systemctl status docker`
# alternatively, `ps -ef | grep docker`
# check version, `docker version`
# more info about docker daemon: `docker info`

# Docker Image Registry
#  - url: https://hub.docker.com

# Commands
# docker pull centos:latest
# docker images
# docker ps -a
# docker run -it centos:latest sh
# docker ps -a
# docker run -it centos:latest sleep 20
# docker run -d -it centos:latest sleep 20
# docker ps -a
# docker run -it centos:latest sh
# docker ps -a
