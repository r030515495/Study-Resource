# Android 筆記

-  [I18N] Hardcoded string "someword", should use @string resource

	```
   文字名稱要加在 string.xml，
   <string name="activity_btn1">btn1</string>
   使用時 android:text="@string/activity_btn1"
   主要是讓顯示文字集中管理。
   修改文字的時候也不用到處改，
   並且可以作多國語系。  
	```
	
- textView 文字置中
	
	```
	android:gravity="center_horizontal"
	```
	
- 執行 程式時 genymotion device 偵測不到

	```
	拉動一下 serial number column
	```
	
- drawable—hdpi、drawable—mdpi、drawable—ldpi 圖片資料夾

	```
	表示圖片解析度
	
	drawable—hdpi 高解析(480 X 800)
	drawable—mdpi 中解析(320 X 480)
	drawable—ldpi 低解析(240 X 320)
	如果將圖片放到不對的解析度資料夾，圖片會被放大
	
	```