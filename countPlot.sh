#!/bin/bash

# read in config file
. ./config

for dir in ${hddsPath}/*  
do
    cd ${dir}
    count=$(ls|grep .plot|wc -l)
    echo "$count" 
    #echo ${dir}
    #echo ${dir} " => " ${count}
    #printf "\n"
done
printf "\n"
cd ~/scripts 
for dir in ${hddsPath}/*  
do
    cd ${dir}
    count=$(ls|grep .plot|wc -l)
    #echo "$count" 
    echo ${dir}
    #echo ${dir} " => " ${count}
    #printf "\n"
done
printf "\n"
cd ~/scripts 
for dir in ${hddsPath}/*  
do
    cd ${dir}
    count=$(ls|grep .plot|wc -l)
    #echo "$count" 
    echo '    - '${dir}
    #echo ${dir} " => " ${count}
    #printf "\n"
done
printf "\n"
cd ~/scripts 
for dir in ${hddsPath}/*  
do
    cd ${dir}
    count=$(ls|grep .plot|wc -l)
    #echo "$count" 
    #echo ${dir}
    drive=/dev/${dir:11}
    echo $drive
    serial=$(sudo smartctl -T permissive -x ${drive} | grep "Serial" | awk '{print $3}')
    echo ${dir} " => " ${count} " =>" $serial
    #printf "\n"
done
printf "\n"
cd ~/scripts 
######################

# basically get all drives that are unmounted (no /), not nvme, of fstype xfs, only a partition, labeled data
#drives=$(lsblk -o kname,fstype,size,type,mountpoint,size,label | grep data | grep part | grep xfs | grep -v nvm | grep -v '/' | cut -f1 -d ' ')

#for drive in $drives
#do
#    mountPoint=${hddsPath}/${drive}
#    mkdir -p ${mountPoint}
#    mount /dev/${drive} ${mountPoint}
#    printf "/dev/${drive} => ${mountPoint}\n"
#done
