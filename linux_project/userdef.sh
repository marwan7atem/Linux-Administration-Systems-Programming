#!/bin/bash
username=$1
userpass=$2
groupname=$3
if [ -z "$username" ] || [ -z "$userpass" ] || [ -z "$groupname" ];then
echo "there are empty argument"
exit 1
fi
counter=0
for num in $(groups $SER);do
if [ $num == "sudo" ];then
counter=1
fi
done
if [ $counter -eq 0 ];then
echo "this script must be run with sudo."
exit 2
#else 
#echo "this script run with sudo permission"
fi
echo "username $username , userpass $userpass , groupname $groupname "
sudo useradd -m -s /bin/bash -N $username
echo "$username:$userpass" | sudo chpasswd
echo $(id $username)
sudo groupadd -g 200 $groupname
sudo usermod -aG $groupname $username
echo $(id $username)
sudo usermod -u 1600 $username
sudo usermod -g $groupname $username
echo $(id $username)
