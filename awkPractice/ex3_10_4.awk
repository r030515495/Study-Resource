#! /usr/bin/awk -f
#  請寫一支 awk 程式，把所有 "鄉名-校名" 這一欄，存成另一個資料檔。
# ./ex3_10_4_count.awk ex3_testData3.txt > ex3_testData4.txt

!/^$/ {
    if($8 ~ /-/){
           print $8
    }
}
