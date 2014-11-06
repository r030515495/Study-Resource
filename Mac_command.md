# Mac command


- 	查看檔案編碼

	```
	file -I {filename} 
	```
-  查看port 誰在使用

	```
	lsof -i :8080
	```
-   變更mac address

	```
	sudo ifconfig en4 ether 00:00:00:00:00:00
	```
-  記錄特定網卡封包

	```
	sudo tcpdump -i en0 -s 0 -B 524288 -w ~/Desktop/DumpFile01.pcap
	```