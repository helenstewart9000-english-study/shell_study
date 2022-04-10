#!/bin/bash

#检测目录
read -p "input path which you want detect>" dir_path
if [ "$dir_path" == "" -o ! -d "$dir_path" ]; then
  echo "The $dir_path is NOT exist in your system."
  exit 1
else
  echo "Okk,No problem---"
fi

#test -d xx echo 1||echo 2
#test -f xx echo 1||echo 2

# 检测文件的一些权限问题 shell 牛逼
read -p "path>" dir
filelist=$(ls $dir) # 列出所有在该目录下的文件名
for filename in $filelist; do
  perm=""
  test -r "$dir/$filename" && perm="$perm readable"
  test -w "$dir/$filename" && perm="$perm writable"
  test -x "$dir/$filename" && perm="$perm executable"
  echo "The file $dir/$filename's permission is $perm "
done
