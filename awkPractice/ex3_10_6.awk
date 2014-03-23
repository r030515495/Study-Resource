#! /usr/bin/awk -f
# 請寫一支 awk 程式，找出主機中 apple 行程所有的 pid 編號。
# ps -ef | ./ex3_10_6.awk

/apple/ {
   print $2
}

