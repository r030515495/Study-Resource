#! /usr/bin/awk -f
#./ex4_2.awk ex4_testData1.txt
#計算資料檔字元總數，含空白字元, 但不含換列字元(\n)



BEGIN {
    FS=""
}

{
    total += NF
    for (i=1; i<=NF; i++) {
        count++
        print "第 " count " 個字元 : " $i "\n"
    }
}

END {
    print FILENAME " 共有 " total, "個字元"
}
