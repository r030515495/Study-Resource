#! /usr/bin/awk -f
#
# 把資料檔每一列前的空白字元刪除，各欄位間只用一空白字元隔開
#./ex3_removeSpace2.awk ex3_testData2.txt

!/^$/{
    $1 = $1
    print $0
}