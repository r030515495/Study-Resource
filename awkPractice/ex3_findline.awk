#! /usr/bin/awk -f
#
# 將 ex3_testData.txt 中，位於新營市的國中找出來
# ./ex3_findline.awk ex3_testData.txt
#

/^新營市/ && /國中/ {
    print $2
}