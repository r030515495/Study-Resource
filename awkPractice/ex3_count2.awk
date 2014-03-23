#! /usr/bin/awk -f
# 印出不可以登入的帳戶
# ./ex3_count2.awk /etc/passwd



BEGIN {
    FS = ":"
    total = 0
}

#$7 ~ /false/{
#    total++
#    print $1
#}

{
    if($7 ~ /false/){
        total ++
        print $1

    }
}
END {

    print "not can loggin account " total " \n";

}