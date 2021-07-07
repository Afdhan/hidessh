Copyright 2021 hidessh.com


Update Dulu
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot

Auto installer Script 


#SSH TUNNEL + SSHL Multi Port
============================================

installer 
************
wget https://raw.githubusercontent.com/4hidessh/sshtunnel/master/debian10/ssh1.sh && chmod +x ssh1.sh  && ./ssh1.sh 
************


#Tunnel VPN
#L2TP/IPSec TUNNEL + SSH TUNNEL
============================================

installer 
************
wget https://raw.githubusercontent.com/4hidessh/hidessh/main/l2tp/ssh-lt2p && chmod +x ssh-lt2p && bash ssh-lt2p
************

#OpenVPN TUNNEL + SSH TUNNEL
============================================

installer 
************
wget https://raw.githubusercontent.com/4hidessh/hidessh/main/OVPN/ovpn.sh && chmod +x ovpn.sh && bash ovpn.sh

wget https://raw.githubusercontent.com/4hidessh/hidessh/main/setup/vpn.sh && chmod +x vpn.sh && bash vpn.sh
************

#WIREGUARD TUNNEL + SSH TUNNEL
============================================

Installer Wireguard 
************
apt-get update -y && apt-get upgrade -y && wget -O install-wireguard-engine "https://www.dropbox.com/s/3kg8d3qaot85pl6/install-wireguard-engine?dl=1" && chmod +x install-wireguard-engine && ./install-wireguard-engine
************


tambahan script 
************
wget https://raw.githubusercontent.com/4hidessh/hidessh/main/wg-hidessh && chmod +x wg-hidessh && ./wg-hidessh 
************

==============================================





Update Scipt


#SSH TUNNEL + Websocket 
============================================

installer 
************
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/4hidessh/hidessh/main/setup/sshws.sh && chmod +x sshws.sh && sed -i -e 's/\r$//' sshws.sh && screen -S sshws.sh ./sshws.sh

************
