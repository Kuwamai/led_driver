#! /bin/sh

make
sudo insmod myled.ko
sudo chmod 666 /dev/myled0

while :
do
	echo 0011100 > /dev/myled0
	sleep 0.01s
	echo 0100010 > /dev/myled0
	sleep 0.01s
	echo 1000001 > /dev/myled0
	sleep 0.01s
	echo 1000001 > /dev/myled0
	sleep 0.01s
	echo 1000001 > /dev/myled0
	sleep 0.01s
	echo 0100010 > /dev/myled0
	sleep 0.01s
	echo 0011100 > /dev/myled0
	sleep 0.01s
	echo 0000000 > /dev/myled0
	sleep 0.1s

	trap 'echo done. ; echo 0000000 > /dev/myled0 ; sudo rmmod myled ; exit 1' 1 2 3 15
done
