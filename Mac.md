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
	
- 顯示系統訊息

 	```
 	 osascript -e 'tell app "System Events" to display dialog "Game Stop"'
	```
	
- 擴大 VirtualBox 硬碟

	```
	# 先將 vmdk 的 類型 複製成 vdi 類型
	VBoxManage clonehd box-disk1.vmdk out.vdi --format VDI
	# 修改大小為 80GB
	VBoxManage modifyhd out.vdi --resize 81920
	# 在圖型介面掛載新磁碟
	```
 
- 取得目前 Mac 版本

 ```
 sw_vers -productVersion # 10.10.3
 ```