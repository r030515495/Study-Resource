# AWK 練習

參考此 [Bash 程式設計網路管理應用 awk 篇](http://tech.ols3.net/techdoc/old/awk_intro/) 網站做的練習



## AWK command

- NF : 該筆記錄中，共有多少欄位。
- $0 代表該筆記錄本身(即整列資料); $1 為欄位1; $2 為欄位2; $3 為欄位3 ....，其它依此類推。
- NR : 目前已讀到第幾筆記錄。
- FS : 欄位分隔符號。預設為空白字元。即 FS = " "。當 awk 讀入一列資料時，會把該列前後的空白字元刪除!
- OFS : 輸出欄位分隔符號。預設為空白字元。即 OFS = " "。
- RS : 記錄分隔符號。預設為換列字元(\n)。
- ORS : 輸出記錄分隔符號。預設為換列字元(\n)。
- OFMT : 輸出格式轉換控制字元。預設為 "%.6g"。
- FILENAME : 資料檔名稱。
- ARGV : 命令列參數陣列。ARGV[0] 即 awk 程式本身的名稱, ARGV[1] 表第一個參數, ....; 用例: ./test.awk A B C , 此時 ARGV[0] 為 awk, ARGV[1] 為 A, ARGV[2] 為 B, ARGV[3] 為 C
- ARGC : 命令列參數個數, 包含 awk 程式本身。
- length : 字元長度

## AWK function
- systime()  : 系統時間
- tolower(str) : 把字串轉成小寫
- toupper(str) : 把字串轉成大寫
- length(str) : 傳回變數的長度
- split(str, arr) : 把字串以 FS 分隔符號做分割，把各分割結果存入陣列 arrr 中。
- split(str, arr, sep) : 同上，但改用 sep 這個指定的分隔符號做分割。




## 跳脫符號

- \\ 代表倒斜線, `\'.
- \a ASCII 碼 7 (鈴聲 BEL).
- \b Backspace, ASCII 碼 8 (BS).
- \f Formfeed, ASCII 碼 12 (FF).
- \n 換列字元, ASCII 碼 10 (LF).
- \r 回列字元, ASCII 碼 13 (CR).
- \t 水平 TAB, ASCII 碼 9 (HT).
- \v 垂直 tab, ASCII 碼 11 (VT).
- \nnn 8 進位數.
- \xhh 16 進位- 數.
- \/ 斜線 /
- \" 雙引號 "
-  \\& &符號