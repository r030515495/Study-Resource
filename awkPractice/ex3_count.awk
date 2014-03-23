#! /usr/bin/awk -f
# /ex3_count.awk ex3_sample.txt
#

{
    if($1 > 10 ) {
        print $0, "大於10";
        total += 1;

    }
}
END {
      print "共有 " total " 列.\n"
}

