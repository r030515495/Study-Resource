#! /usr/bin/awk -f
#  請寫一支 awk 程式，列出分校。
# ./ex3_10_3_count.awk ex3_testData3.txt

/分校/ {
   print $8
}
