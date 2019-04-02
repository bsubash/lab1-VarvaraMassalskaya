#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "1.Проверить является ли заданное слово ключевым (использовать bash -c help)"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done
echo "#!/bin/bash">tmp
echo "$1">>tmp
chmod 755 ./tmp
./tmp 2>report.f
cat report.f
var=`cat report.f | grep "не найдена"`

if [ "$var" != "" ]  ; then
        echo "not key word"
else
        echo "key word"
fi
