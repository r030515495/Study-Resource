#! /usr/bin/awk -f
#
# 將 ex3_testData.txt 中，VOIP前三碼數字最大的學校找出來
# ./ex3_findMax.awk ex3_testData.txt
#

{
    # 資料檔的第一列不要(因為該列為標題)
    if (NR > 1) {
        if ($6 > max_no) {
            max_no = $6
            school = $2
        }
    }
}

END {
    print "VOIP前三碼數字最大的學校是 " school, maxno
}