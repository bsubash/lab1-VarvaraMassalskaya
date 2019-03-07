#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
  echo "Задание"
  echo "16. Сравнить две строковые переменные и вывести сообщение yes или no, используя команду test"
  echo
  echo
  fi
  echo "Введите первую перменную"
  read a
  echo "Введите вторую переменную:"
  read b
  if test $a = $b 
  then
  echo "yes"
  else
  echo "no"
  fi
