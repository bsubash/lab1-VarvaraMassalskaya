#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
  echo "Задание"
  echo "24. Вывести только четные параметры, переданные в скрипт, цикл for записать в одной строке"
  echo
  echo
  fi
  args=("$@")  
  last=$(($# - 1))
  for i in `seq 0 $last`; do mod=$(($i%2)); if [ $mod == 0 ]; then echo ${args[$i]};fi; done 
  exit 0
