# Linux command By CentOS


- 查看防火牆狀態

	```sh
	/etc/init.d/iptables status
	```
	
- 停止防火牆

	```sh
	/etc/init.d/iptables stop 
	```
- 修改系統時區

	```sh
	sudo rm -rf /etc/localtime
	sudo cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime
	```
	
- 查詢網卡

	```sh
	ip addr
	```
	
- 網路封包統計

	```sh
	ip -s link
	```
 
- 簡易 for 迴圈 1 到 10

 ```sh
 for i in {1..10}
	 do
		echo $i
	 done
 ```
 
- 查詢目前使用磁碟使用量

	```sh
	df -m # -m 是會以 MB 呈現  -h 是會區分 MB,GB
	```
	
- 查詢目前目錄使用磁碟大小

	```sh
	du -h # -h 是會區分 MB,GB
	```

- 查詢目前系統版本

	```sh
	cat /etc/*release*
	uname - a
	```
	
- 修改 root 密碼

	```sh
	passwd root
	```
- 建立開機啟動的服務

	在 /etc/init.d 底下先建立一個檔案 testService

	``` sh
	#!/bin/sh
	# Starts and stops script
	#
	#
	# myserivced        Startup script for the shell file
	#
	# chkconfig: - 95 07
	# description: 
	#            .
	# processname:

	case "$1" in
	start)
	    exec ~/start-service.sh

	;;

	stop)
	        exec ~/stop-service.sh
	;;

	restart)
	        $0 stop
	        $0 start
	;;

	status)
	exit 1
	;;

	*)
	        echo "Usage: $0 {start|stop|restart|status}"
	        exit 1
	esac
	```
	
	註冊服務
	
	```sh
	sudo chmod -x testService
	sudo /sbin/chkconfig --add testService
	sudo /sbin/chkconfig --list testService
	sudo /sbin/chkconfig testService on # 設定開機啟動
	```