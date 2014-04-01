#! /usr/bin/awk -f
# do  :./ex4_10_4.awk ex4_testData3.txt
# desc: 4. 已知 a = 2987.1234567 ，試求 length(a) = ? 7
#       5. 同上，試求 print a 為何?  2987.12

BEGIN {
    a = 2987.1234567
    print length(a)
    print a
}
