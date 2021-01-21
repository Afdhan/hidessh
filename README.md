# hidessh


#tunnel SSH L2TP

wget https://raw.githubusercontent.com/4hidessh/hidessh/main/tunnel1.sh
chmod +x tunnel1.sh
./tunnel1.sh

#edit Pra Shared l2TP
nano /etc/ipsec.secrets 





#WIREGUARD TUNNEL + SSH TUNNEL
============================================

Installer Wireguard 
************
apt-get update -y && apt-get upgrade -y && wget -O install-wireguard-engine "https://www.dropbox.com/s/3kg8d3qaot85pl6/install-wireguard-engine?dl=1" && chmod +x install-wireguard-engine && ./install-wireguard-engine
************


tambahan script 
************
wget https://raw.githubusercontent.com/4hidessh/hidessh/main/wg-hidessh && chmod +x wg-hidessh  &&./wg-hidessh 
************
==============================================
