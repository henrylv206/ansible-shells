#! /bin/bash

arr=(192.168.168.54 192.168.168.69 192.168.168.60 192.168.168.71 192.168.168.73 192.168.168.41 192.168.168.39 192.168.168.31 192.168.168.80 192.168.168.30 192.168.168.76 192.168.168.77 192.168.168.38)

num=${#arr[@]}
echo "IP数量：" $num

for ((i=0;i<num;i++))
{
  echo ${arr[i]}
#  ssh-copy-id root@${arr[i]}
  
  cpu=`ssh root@${arr[i]} cat /proc/cpuinfo | grep processor | tail -1 | cut -d ' ' -f 2`
  echo "CPU: `expr $cpu + 1`"  

  mem=`ssh root@${arr[i]} cat /proc/meminfo | grep MemTotal` 
  echo $mem
  
  echo "DISK:"
  ssh root@${arr[i]} df -h | grep /dev/sd

  echo 
  echo
}


arr=(192.168.177.91 192.168.177.74)

num=${#arr[@]}
echo "IP数量：" $num

for ((i=0;i<num;i++))
{
  echo ${arr[i]}
#  ssh-copy-id root@${arr[i]}

  cpu=`ssh zhaokexuan@${arr[i]} cat /proc/cpuinfo | grep processor | tail -1 | cut -d ' ' -f 2`
  echo "CPU: `expr $cpu + 1`"

  mem=`ssh zhaokexuan@${arr[i]} cat /proc/meminfo | grep MemTotal`
  echo $mem

  echo "DISK:"
  ssh zhaokexuan@${arr[i]} df -h | grep /dev/sd

  echo
  echo
}


