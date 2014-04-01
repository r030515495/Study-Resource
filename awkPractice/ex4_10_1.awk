#! /usr/bin/awk -f
# do  :./ex4_10_1.awk ex4_testData1.txt
# desc: 1. a=5*4+8, 試問 if (a = 20) print "Just do it!" 中, 字串會不會顯示 ? 會，因為不是使用a == 20

BEGIN {
    a=5*4+8;
    if(a =20){
        print "Just do it!";
    }
}

