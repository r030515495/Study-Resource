# FFMpeg 筆記

- 取得影片截圖 

	```
	-f 圖片格式
	-ss 截圖時間
	-vframes 影像擷取張數

	ffmpeg -i in.mp4 -ss 00:00:10 -f image2 -vframes 1 out.png
	```


- 取得影片特定範圍

	```
	-ss 開始時間
	-t 擷取秒數
	-c:v 擷取影像
   -acodec 擷取聲音
	
	ffmpeg -i in.mkv -ss 80 -t 80 -c:v copy -c:a copy out.mp4
	```
- 轉換影片為FLV

	```
	-y 若檔案有存在是否要覆蓋原檔
	-b:a
	-b:v
	-ar 
	-qscale 品質 越小越大 0 ~255
	
	ffmpeg -i input.avi -y -b:a 56 -b:v 200 -ar 44100 -qscale 8 -f flv
	```
	
- 合併 DVD 檔案 to mp4
	```
	ffmpeg -i "concat:01.VOB|02.VOB|03.VOB|04.VOB" -f mpeg -c copy output.mp4
	```