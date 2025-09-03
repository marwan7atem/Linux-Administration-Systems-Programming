#!/bin/bash
read dir
echo name of directory you want is $dir
if [ ! -e $dir ];then
echo "directory doesn't exist"
mkdir $dir
else 
echo "directory exists"
rm -r $dir;mkdir $dir
echo "$dir directory removed and create again "
fi
touch ./$dir/main.c ./$dir/main.h ./$dir/hello.c ./$dir/hello.h
files="main.c main.h hello.c hello.h"
for file in $files;do
echo "this file is named $file" >> ./$dir/$file
done
tar -cvf archive.tar ./$dir
echo "please enter the name of new user "
read user
cp archive.tar /home/$user
cd /home/$user
tar -xvf archive.tar 
echo "done"
