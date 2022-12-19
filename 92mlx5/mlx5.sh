#!/bin/sh

type getarg > /dev/null 2>&1 || . /lib/dracut-lib.sh

#Infiniband
modprobe mlx5_core
modprobe mlx5_ib
modprobe ib_ipoib

sleep 5
ip link set ib0 up

rmmod mlx5_ib

sleep 5

modprobe mlx5_ib

sleep 5

ip link set ib0 up

sleep 5

rmmod mlx5_ib

sleep 5

modprobe mlx5_ib

sleep 5

ip link set ib0 up

#rmmod mlx5_ib
#rmmod mlx5_core
#rmmod ib_ipoib
#rmmod ib_cm
#rmmod ib_uverbs
#rmmod ib_core
#rmmod mlxdevm
#rmmod mlx_compat

#ip link set ib0 up

exit 0
