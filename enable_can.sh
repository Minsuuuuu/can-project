#check current values of related registers
sudo busybox devmem 0x0c303000
sudo busybox devmem 0x0c303008
sudo busybox devmem 0x0c303010
sudo busybox devmem 0x0c303018
#0x0000C055
#0x0000C055
#0x0000C059
#0x0000C059

echo '0 check current value'

#use devmem to modify registers
sudo busybox devmem 0x0c303000 32 0x0000C400
sudo busybox devmem 0x0c303008 32 0x0000C458
sudo busybox devmem 0x0c303010 32 0x0000C400
sudo busybox devmem 0x0c303018 32 0x0000C458

echo '1 use devmem'

#check modified values of relate registers
sudo busybox devmem 0x0c303000
sudo busybox devmem 0x0c303008
sudo busybox devmem 0x0c303010
sudo busybox devmem 0x0c303018
#0x0000C400
#0x0000C458
#0x0000C400
#0x0000C458

echo '2 check modified'

#or use modeprobe to mount CAN controller
sudo modprobe can
sudo modprobe can-raw
sudo modprobe can-dev
sudo modprobe mttcan

echo '3 use modeprobe'

#configure CAN controllers with 1Mbps baudrate
#sudo ip link set can0 type can bitrate 1000000 dbitrate 2000000 fd on
#sudo ip link set can1 type can bitrate 1000000 dbitrate 2000000 fd on

sudo ip link set can0 type can bitrate 500000 dbitrate 2000000 fd on berr-reporting on
sudo ip link set can1 type can bitrate 500000 dbitrate 2000000 fd on berr-reporting on

echo '4 ip link set'

#loopback test
#sudo ip link set can0 type can bitrate 1000000 loopback on
#sudo ip link set can1 type can bitrate 1000000 loopback on

echo '5 open CAN controller'
sudo ip link set can0 up
sudo ip link set can1 up

echo '6 check CAN controller value'
#check the status of CAN controller
ip -s -d link show can0
ip -s -d link show can1

#close CAN controller
#sudo ip link set down can0
#sudo ip link set down can1

echo '4 link set'

#loopback test
sudo ip link set can0 type can bitrate 1000000 loopback on
sudo ip link set can1 type can bitrate 1000000 loopback on

#open CAN controller
sudo ip link set can0 up
sudo ip link set can1 up
