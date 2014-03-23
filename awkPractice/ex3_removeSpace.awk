#! /usr/bin/awk -f
# 取消空白行
# ./ex3_removeSpace.awk ex3_testData2.txt
!/^$/{
    print $0
}