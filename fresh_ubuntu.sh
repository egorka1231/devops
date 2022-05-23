sudo apt update && \
sudo apt upgrade -y


##EGOR
###sudo apt install git 

##git clone https://github.com/usetech-llc/nft_devops.git
##EGOR


###########linuxpacks##########


##EGOR##
#---//---
#if [[ $EUID -ne 0 ]]; then
#   echo "This script must be run as root" 
#   exit 1
#fi
##EGOR##

time sudo -- sh -c 'apt-get update && sudo apt install -y cmake pkg-config libssl-dev git build-essential clang libclang-dev curl net-tools openssh-server byobu libssl-dev pkg-config libclang-dev clang gnupg2 pass'


#sudo apt-get install libssl-dev pkg-config libclang-dev clang
#sudo apt install gnupg2 pass



###########python##############

yes Y | sudo apt install python3-pip && sudo apt install python3.8-venv



#pip3 install --upgrade setuptools pip testresources

#sudo apt install python3.8-venv

python3 -m pip install --user --upgrade pip

python3 -m pip --version

python3 -m pip install --user virtualenv

python3 -m venv substrate 

cd /home/ubuntu/substrate/bin 

source activate


###########docker##############


yes Y | sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \

sudo apt install docker-ce docker-ce-cli containerd.io -y && \


# To install the latest version

# apt list -a docker-ce

# docker-ce/focal 5:19.03.9~3-0~ubuntu-focal amd64

# sudo apt install docker-ce=<VERSION> docker-ce-cli=<VERSION> containerd.io

#sudo systemctl status docker 

# prevent the Docker package from being updated

sudo apt-mark hold docker-ce && \

sudo usermod -aG docker $USER && \




#############Compose##################

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \

sudo chmod +x /usr/local/bin/docker-compose


############Rust#####################


curl https://sh.rustup.rs -sSf | sh -s -- -y && \
export PATH="$PATH:$HOME/.cargo/bin" && \
rustup toolchain uninstall $(rustup toolchain list) && \
rustup toolchain install 1.56.1 && \
rustup default 1.56.1 && \
rustup target add wasm32-unknown-unknown --toolchain 1.56.1 && \
rustup show

newgrp docker



















