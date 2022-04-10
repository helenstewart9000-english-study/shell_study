#!/bin/bash

read -p "ENTER>" vv
if [ "$vv" == "A"  ] || [ "$vv" == "0" ];then 
echo "AAAA---000"
exit

elif [ "$vv" == "B" ];then
echo "BBB"
exit;
else
echo "CCCCC"&&exit

fi
