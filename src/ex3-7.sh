#!/bin/sh
if ! [ -e $1 ]
then
  mkdir $1
fi

cd $1
for i in 0 1 2 3 4
do
  touch file$i.txt
  mkdir file$i
  ln -s file$i.txt file$i
done

