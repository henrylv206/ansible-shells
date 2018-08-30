#! /bin/bash

echo "test"  $0

arr=(
192.168.168.30
192.168.168.77
192.168.177.91
192.168.177.74
192.168.168.23
192.168.168.58
192.168.168.24)

num=${#arr[@]}
echo "IP数量：" $num

for ((i=0;i<num;i++))
{
  echo ${arr[i]} root "Zl^Xt1Qb*D2018@cloud"
  ./expectpasswd.sh ${arr[i]} root Zl^Xt1Qb*D2018@cloud

  echo "finished"

}
