#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
  echo "Задание"
  echo "32. Создать функцию распознавания переданного параметра и использовать ее внутри функции, обрабатывающей параметры внутри скрипта"
  echo
  echo
fi
argument_processing ()
{
        echo "Получен параметр $1"
}

func()
{
	
	for item in ${args[@]}
	do
		argument_processing ${item} 
	done
}
args=($@)
func 
exit 0


