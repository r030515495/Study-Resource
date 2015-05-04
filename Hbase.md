# Hbase sehll 指令

參考網站 [HBase Command Line Tutorial | AkbarAhmed.com](http://akbarahmed.com/2012/08/13/hbase-command-line-tutorial/)

- 進入到 hbase shell

	```
	/bin/hbase shell
	```
	
- 離開 hbase shell

	```
	exit <Enter>
	```
	
- 建立 results table 以及 name 和 scores 兩個 column family

	```
	create 'results','name','scores'
	```


- 顯示所有 table 

	```
	list 
	```

- 取得 t1 table 內所有資料

	```
	scan 't1' 
	```

- 統計 t1 筆數

	```
	count 't1' 
	```

- 統計 t1 內，所有的 rowkey 

	```
	count 't1', INTERVAL => 1 
	```

- 統計 t1 的筆數，以 1000 為增加單位，當資料過多時要調整，不然會很慢

	```
	count 't1', INTERVAL => 1000
	```
		
- 選取所有 table中 scores column 中 的 math qualifier

	```
	scan 'results', {COLUMNS => 'scores:math'}
	```

- 顯示 t1 的詳細資訊

	```
	describe 't1'
	```
	
- 輸入 Row Key 為 s96113106 name column的值

	```
	put 'results','s96113106','name:','Ball'
	```
	
-  輸入 scores column 的chinese qualifier 的值

	```
	put 'results','s96113106','scores:chinese','30'
	```
	
 - 輸入 scores column 的 english qualifier 的值

	```
	put 'results','s96113106','scores:english','40'
	```
	
- 輸入 scores column 的 math qualifier 的值

	```
	put 'results','s96113106','scores:math','50'
	```

- 選取 Row Key 為 s96113106 的所有資料

	```
	get 'results','s96113106'
	```
	
- 刪除 t1 table 內 指定 rowkey 

	```
	deleteall 't1','1234' 
	```

- 刪除 Row Key 為 s96113106 的 name qualifier 資料

	```
	delete 'results','s96113106','name:'
	```

- 刪除表格(需先disable分散式資料表)

	```
	disable 'results'
	drop 'results'
	```
	
- 可以分號 ; 區分指令

	```
	disable 'results';drop 'results';list
	```
	
- 顯示該 Table 所有 qualify

	```
	echo "scan 't1'" | bin/hbase shell | awk -F'=' '{print $2}'
	```