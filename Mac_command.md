# Mac command


- file -I {filename} 查看檔案編碼
- lsof -i :8080 查看port 誰在使用
- sudo ifconfig en4 ether 00:00:00:00:00:00  變更mac address
- sudo tcpdump -i en0 -s 0 -B 524288 -w ~/Desktop/DumpFile01.pcap 記錄特定網卡封包