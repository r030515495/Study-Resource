#! /usr/bin/awk -f
#  請寫一支 awk 程式，計算 data3-3.txt 檔案列表中，所有一般檔案(非目錄)的檔案大小總和。
# ./ex3_10_5_count.awk ex3_testData3.txt

!/^d/ {
   count += $5
}
END{
    print count;
}
