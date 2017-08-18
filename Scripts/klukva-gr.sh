#!/bin/bash
# 
echo "Поиск негодяя держащего график..."

smbstatus -L | grep График.\ EXCEL\ ONLY..xlsm | grep RDWR | grep -wEo '[1][0][0-9][0-9]' > ./pid.pid

echo "Вычисляем по айпи..."
#хуй его знает как он со строки читает
read user <pid.pid
echo "pid юзера $user"

(($user + 0)) && echo "Это элементарно Ватсон!" || echo "Нужно больше золота милорд! (файл никем не открыт на редактирование/запись"

#
cat /etc/passwd | grep 1064 | sed -r 's/:.+//' > ./nik
read nik<nik

echo "Злодей обозвал свой компьютер $nik!"
