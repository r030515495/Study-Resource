#! /usr/bin/awk -f
# do  :./ex4_10_2.awk ex4_testData2.txt
# desc: 2. 寫一支 awk 程式, 找出以下test.dat資料檔中的最大值:

{
    for(i=1; i<=NF ;i++){
        val = $i
        if(val > MAX){
            MAX = $i
        }
    }
}
END {
    print "最大值" ,MAX
}