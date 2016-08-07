#!/bin/bash

ADDR=0x53
POWER_CTL=0x2D
DATA_FORMAT=0x31
DATAX0=0x32
DATAX1=0x33
DATAY0=0x34
DATAY1=0x35
DATAZ0=0x36
DATAZ1=0x37

# init
i2cset -y 1 ${ADDR} ${DATA_FORMAT} 0x01
i2cset -y 1 ${ADDR} ${POWER_CTL} 0x08

while true ; do
        printf "%s " $(date)
        printf "DATAX0:%3d " $(i2cget -y 1 ${ADDR} ${DATAX0})
        printf "DATAX1:%3d " $(i2cget -y 1 ${ADDR} ${DATAX1})
        printf "DATAY0:%3d " $(i2cget -y 1 ${ADDR} ${DATAY0})
        printf "DATAY1:%3d " $(i2cget -y 1 ${ADDR} ${DATAY1})
        printf "DATAZ0:%3d " $(i2cget -y 1 ${ADDR} ${DATAZ0})
        printf "DATAZ1:%3d " $(i2cget -y 1 ${ADDR} ${DATAZ1})
        printf "\n"
        sleep 0.3;
done

