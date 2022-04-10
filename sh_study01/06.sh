#!/bin/bash

read -p ">" ff

cc=0
for ((x = 0; x < $ff; x++)); do
  cc=$(($cc + $x))
  echo $x
done

echo "out>{$cc}"
echo "out>{$cc}"
