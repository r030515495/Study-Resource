#! /usr/bin/awk -f
# 印出輸入參數
# ./ex3_argv.awk a b c d
BEGIN { print ARGC, ARGV[0], ARGV[1], ARGV[2], ARGV[3] }
