# Mac command


- 	查看檔案編碼

	```sh
	file -I {filename} 
	```
-  查看port 誰在使用

	```sh
	lsof -i :8080
	```
-   變更mac address

	```sh
	sudo ifconfig en4 ether 00:00:00:00:00:00
	```
	
-  記錄特定網卡封包

	```sh
	sudo tcpdump -i en0 -s 0 -B 524288 -w ~/Desktop/DumpFile01.pcap
	```
	
- 顯示系統訊息

 	```sh
 	 osascript -e 'tell app "System Events" to display dialog "Game Stop"'
	```
	
- 擴大 VirtualBox 硬碟

	```sh
	# 先將 vmdk 的 類型 複製成 vdi 類型
	VBoxManage clonehd box-disk1.vmdk out.vdi --format VDI
	# 修改大小為 80GB
	VBoxManage modifyhd out.vdi --resize 81920
	# 在圖型介面掛載新磁碟
	```
 
- 取得目前 Mac 版本

	```sh
	 sw_vers -productVersion # 10.10.3
	```
 
- Virtualbox 指令

	```sh
	VBoxManage controlvm "VMname" poweroff # 關閉 VM
	VBoxManage startvm "VMname" # 啟動 vm
	VBoxManage list vms #列出所有 VM
	```
	
- 開啟安全性與隱私的任何來源(macOS Sierra 10.12) 之後會沒有此選項

	```sh
	sudo spctl --master-disable 
	```

- 判斷藍牙滑鼠的電池量。

	```sh
	mbatt=`/usr/sbin/ioreg -c AppleDeviceManagementHIDEventService | grep BatteryPercent | grep -i '"BatteryPercent" ='|sed 's/[^[:digit:]]//g'`
	
	if [[ -n $mbatt ]] && (($mbatt <= 20)); then
		osascript -e "display notification \"目前電量: $mbatt%\" with title \"滑鼠電池量過低\""
	fi
	```