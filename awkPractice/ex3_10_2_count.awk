#! /usr/bin/awk -f
# 請寫一支 awk 程式，找出大內鄉的學校有哪些？
# ./ex3_10_2_count.awk ex3_testData3.txt


/大內鄉/ {
   print $8
}
