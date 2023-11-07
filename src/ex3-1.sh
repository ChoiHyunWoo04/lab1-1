#!/bin/sh
input=$1
if [ -z "$1" ]
then
  input=100
fi
i=1
until [ $i -gt $input ]
do
  echo "hello world"
  i=`expr $i + 1`
done
exit 0
