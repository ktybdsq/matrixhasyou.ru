#!/bin/bash
#
var_pid=$(smbstatus -L | grep График.\ EXCEL\ ONLY..xlsm | grep RDWR | awk '{print $2;}') 
# echo "переменная var_pid = $var_pid"

var_nik=$(cat /etc/passwd | grep $var_pid | sed -r 's/:.+//')
# echo "переменная var_nik = $var_nik"

echo "Эту сволочь зовут -  $var_nik!"

