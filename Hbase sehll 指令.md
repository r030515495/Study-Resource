# Hbase sehll 指令

參考網站 [HBase Command Line Tutorial | AkbarAhmed.com](http://akbarahmed.com/2012/08/13/hbase-command-line-tutorial/)

- 進入到 hbase shell

	```
	~/hbase-0.94.8/bin/hbase shell
	```
	
- 離開 hbase shell

	```
	exit <Enter>
	```
	
- 建立results table 以及name和scores兩個column falmiy

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

- 計算 t1 筆數

	```
	count 't1' 
	```

- 顯示 t1 table 內，所有的 rowkey 

	```
	count 't1', INTERVAL => 1 
	```
	
- 選取所有table中 scores column 中的math label

	```
	scan 'results', {COLUMNS => 'scores:math'}
	```

- 顯示 t1 table 的詳細資訊

	```
	describe 't1'
	```
	
- 輸入Row Key為s96113106 name column的值

	```
	put 'results','s96113106','name:','Ball'
	```
	
-  輸入scores column的chinese label的值

	```
	put 'results','s96113106','scores:chinese','30'
	```
	
 - 輸入scores column的english label的值

	```
	put 'results','s96113106','scores:english','40'
	```
	
- 輸入scores column的math label的值

	```
	put 'results','s96113106','scores:math','50'
	```

- 選取Row Key 為 s96113106的所有資料

	```
	get 'results','s96113106'
	```
	
- 刪除 t1 table 內 指定 rowkey 

	```
	deleteall 't1','rowkey' 
	```

- 刪除Row Key 為 s96113106的name:資料

	```
	delete 'results','s96113106','name:'
	```


- 刪除表格(需先disable分散式資料表)

	```
	disable 'results'
	drop 'results'
	```
- 顯示該 Table 所有 qualify

	```
	echo "scan 't1'" | bin/hbase shell | awk -F'=' '{print $2}'
	```