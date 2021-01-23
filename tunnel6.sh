#!/bin/sh
#script auto installer SSH + VPN LT2P/IPSec PSK
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9

#update dan upgrade
echo "================= Update dan upgrade VPS ======================"
apt-get update && apt-get upgrade -y

#package tambahan
echo "================  install Package Tambahan Penting Lain nya ======================"
apt-get -y install wget curl gcc 


#auto installer L2TP/Ipsec PSk 
echo "=================  Auto installer L2TP/Ipsec ======================"
wget https://raw.githubusercontent.com/hwdsl2/setup-ipsec-vpn/master/vpnsetup.sh && chmod +x vpnsetup.sh && sh vpnsetup.sh

#add remove account VPN lt2p
wget -O /usr/local/bin/stdev-l2tp-add-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-add-user"
wget -O /usr/local/bin/stdev-l2tp-remove-user "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-remove-user"

# shared key
wget -O /usr/local/bin/stdev-l2tp-get-psk "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/stdev-l2tp-get-psk"

#edit password shared l2tp
wget -O /etc/ipsec.secrets "https://raw.githubusercontent.com/4hidessh/sshtunnel/master/ipsec.secrets"


#permition
chmod +x /usr/local/bin/stdev-l2tp-add-user
chmod +x /usr/local/bin/stdev-l2tp-remove-user
chmod +x /usr/local/bin/stdev-l2tp-get-psk

#auto installer SSH + Dropbear +Stunnel + SSLH Multi Port 
wget https://raw.githubusercontent.com/4hidessh/sshtunnel/master/debian10/ssh2baru.sh && chmod +x ssh2baru.shh && ./ssh2baru.sh
