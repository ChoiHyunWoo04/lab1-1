#!/bin/sh
if ! [ -e $1 ]
then
  mkdir $1
  cd $1
  touch file0.txt
  touch file1.txt
  touch file2.txt
  touch file3.txt
  touch file4.txt
else
  cd $1
  ls
fi
tar -zcf zfiles.tar.gz *
mkdir files
mv zfiles.tar.gz ../files/files
cd files
tar -zxvf zfiles.tar.gz
exit 0
