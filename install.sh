sudo apt update
sudo apt full-upgrade
sudo apt install -y python3-pip libssl-dev
sudo pip3 install bigchaindb==2.0.0b9
bigchaindb configure
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt install -y unzip
wget https://github.com/tendermint/tendermint/releases/download/v0.22.8/tendermint_0.22.8_linux_amd64.zip
unzip tendermint_0.22.8_linux_amd64.zip
rm tendermint_0.22.8_linux_amd64.zip
sudo mv tendermint /usr/local/bin
tendermint init
sudo apt install monit
bigchaindb-monit-config