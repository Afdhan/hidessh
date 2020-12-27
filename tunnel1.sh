#!/bin/sh
#script auto installer SSH + VPN LT2P/IPSec PSK
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9


#installer auto SSH, Dropbear , Stunnel, badVPN
cd
wget https://raw.githubusercontent.com/4hidessh/sshtunnel/master/debian10/ssh-baru.sh
chmod +x ssh-baru.sh
bash ssh-baru.sh


#auto installer L2TP/Ipsec PSk 
#cd
#wget https://git.io/vpnsetup -O vpnsetup.sh && sudo sh vpnsetup.sh

#atau 
#auto installer L2TP/Ipsec PSk 
wget https://git.io/vpnsetup -O vpnsetup.sh && sudo \
VPN_IPSEC_PSK='hidessh' \
VPN_USER='hidessh' \
VPN_PASSWORD='apagunanyahidup' \
sh vpnsetup.sh


#add remove account VPN lt2p
wget -O /usr/local/bin/l2tp-add-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/l2tp-add-user"
wget -O /usr/local/bin/l2tp-remove-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/l2tp-remove-user"

# shared key
wget -O /usr/local/bin/l2tp-get-psk "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/l2tp-get-psk"

#permition
chmod +x /usr/local/bin/l2tp-add-user
chmod +x /usr/local/bin/l2tp-remove-user
chmod +x /usr/local/bin/l2tp-get-psk

#hapus script
rm -rf tunnel1.sh
rm -rf vpnsetup.sh
