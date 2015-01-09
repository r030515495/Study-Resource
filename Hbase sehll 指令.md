# Hbase sehll 指令

```
顯示所有 table 
list 

取得 t1 table 內所有資料
scan 't1' 

計算 t1 筆數
count 't1' 

顯示 t1 table 內，所有的 rowkey 
count 't1', INTERVAL => 1 

刪除 t1 table 內 指定 rowkey 
deleteall 't1','rowkey' 

顯示 t1 table 的詳細資訊
describe 't1'

```