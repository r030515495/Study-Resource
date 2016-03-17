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
	sudo chmod 755 testService
	sudo chmod -x testService
	sudo /sbin/chkconfig --add testService
	sudo /sbin/chkconfig --list testService
	sudo /sbin/chkconfig testService on # 設定開機啟動
	```
	
- 鏡像備份資料夾

	``` sh
	rsync -av --delete /root/b /root/b /media/folor
	# -a, --archive 備份模式，表示以遞迴方式傳輸文件，並保持所有文件屬性，等於 -rlptgoD（沒有 -H）
	# -v, --verbose 詳細模式輸出訊息
	# --delete 刪除傳送端已經不存在，而目的端存在的檔案
	# --exclude=".svn" 跳過指定名稱檔案
	```
- 執行排程

	```
	crontab -e 設定
	crontab -l # 顯示目前所有排程
	tail -f /var/log/cron # 查看排程執行情況
	```
	
	範例
	
	```
	## 每週 1-5 晚上七點執行 shell
	* 19 * * 1-5 sh /root/rsync-folder.sh
	```
	
- 同步時間

	``` sh 
	ntpdate -s time.stdtime.gov.tw
	```
- 依行數分割檔案

	``` sh
	split   --additional-suffix .sql -d -l 500000 output2.txt
	# --additional-suffix 檔案後贅字
	# -d 使用數字當做序列
	# -l 分隔行數
	# -b 是用檔案大小 ex1: -b 10m
	```
	
- 顯示當前目錄大小並排序

	``` sh
		du -h -d 1 |sort -rn
	```

- 找到特定名稱檔案並刪除

	``` sh
	find . -type f -name "FILE-TO-FIND" -exec rm -f {} \;
	```
	
- 找當前目錄包含特定文字的檔案

	``` sh
	grep -i -R 'exception' .
	```