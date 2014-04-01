#! /usr/bin/awk -f
# do  :./ex4_10_3.awk ex4_testData3.txt
# desc: 3.寫一支 awk 程式，把以下資料列的分隔符號由 "," 換成 "|" :

BEGIN {
    FS=","
}
{
    for(i= 1 ; i<= NF ; i++){
        if(val){
            val  = val "|" $i
         }else{
            val = $i
         }
    }

}
END {
    print val;

}