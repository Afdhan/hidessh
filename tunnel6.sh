#!/bin/sh
#script auto installer SSH + VPN LT2P/IPSec PSK
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9


apt-get update && apt-get upgrade -y
apt-get install wget curl -y

#auto installer L2TP/Ipsec PSk 

wget https://git.io/vpnsetup -O vpnsetup.sh && sudo sh vpnsetup.sh

#add remove account VPN lt2p
wget -O /usr/local/bin/stdev-l2tp-add-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-add-user"
wget -O /usr/local/bin/stdev-l2tp-remove-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-remove-user"

# shared key
wget -O /usr/local/bin/stdev-l2tp-get-psk "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-get-psk"


#permition
chmod +x /usr/local/bin/stdev-l2tp-add-user
chmod +x /usr/local/bin/stdev-l2tp-remove-user
chmod +x /usr/local/bin/stdev-l2tp-get-psk
