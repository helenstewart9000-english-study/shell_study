#!/bin/bash
#code-1 满足条件的循环
#while [ "$input_v" != "yes" -a "$input_v"=="YES" ]; do
#    read -p "input->" input_v
#done
#echo "output->$input_v"

#不满足条件的循环
until [ "$in_v" == "y" -o "$in_v" == "Y" ]; do
    read -p "in->" in_v
done

echo "out->"$in_v