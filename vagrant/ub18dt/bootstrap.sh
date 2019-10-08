apt-get update
#apt-get -y upgrade

apt-get install -y git

apt-get remove docker docker-engine docker.io containerd runc
apt-get update
apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

#docker run hello-world # ok


usermod -aG docker $USER # for non-prod only and TODO: add a tg user and do this whole thing as tg
# won't take effect in current shell

# docker compose:
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#docker-compose --version # ok
