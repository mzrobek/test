scutil --nc start "IIC"
sleep 10
sudo route delete default -interface $1
APP="$(ifconfig $1 | grep "inet " | cut -d: -f2 | awk '{print $2}')"
#DG="$(route -n get default | grep 'gateway' | awk '{print $2}')"
sudo route add 10.110.0.1/16 $APP
sudo route add 0.0.0.0 9.147.100.1
# This is a comment
# This is another comment