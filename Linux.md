# Linux command By CentOS


- 查看防火牆狀態

	```
	/etc/init.d/iptables status
	```
	
- 停止防火牆

	```
	/etc/init.d/iptables stop 
	```
- 修改系統時區

	```
	sudo rm -rf /etc/localtime
	sudo cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime
	```
	
- 查詢網卡

	```
	ip addr
	```
	
- 網路封包統計

	```
	ip -s link
	```
 
- 簡易 for 迴圈 1 到 10

 ```
 for i in {1..10}
	 do
		echo $i
	 done
 ```
 
- 查詢目前使用磁碟使用量

	```
	df -m # -m 是會以 MB 呈現  -h 是會區分 MB,GB
	```
	
- 查詢目前目錄使用磁碟大小

	```
	du -h # -h 是會區分 MB,GB
	```

