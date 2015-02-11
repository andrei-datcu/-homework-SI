#!/bin/bash

qemu-system-arm -machine versatilepb -cpu arm1176 -kernel zImage -append "root=/dev/sda rw" -hda ./rpi-si-image-raspberrypi.ext3 -netdev bridge,br=virbr0,id=mynet -net nic,model=smc91c111,netdev=mynet
