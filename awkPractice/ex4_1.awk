#! /usr/bin/awk -f
#./ex4_1.awk ex4_testData1.txt
#計算資料檔字元總數，含空白字元, 但不含換列字元(\n)



BEGIN {
    FS=""
}

{
    total1 += NF
}
{
    total2 += length
}

END {
    print "使用NF",FILENAME " 共有 " total1 , "個字元"
    print "使用length",FILENAME " 共有 " total2 , "個字元"
}