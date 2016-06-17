# DotNet

- 出現 Bad Request - Invalid Hostname
	修改 %USERPROFILE%\My Documents\IISExpress\config\applicationhost.config 
	的內容
	
	```xml
	 bindingInformation="*:8080:localhost"
	```
	改為
	
	```xml
	 bindingInformation="*:8080:*"
	```


- 快速鍵
	- 查看方法定義 `F12 `
	- 查看方法參考 `Shift + F12`
	- 尋找檔案名稱 `Ctrl + ;`
	- 跳到指定行號 `Ctrl + G`
	- 註解 `Ctrl + K, Ctrl + C`
	- 取消註解 `Ctrl + K, Ctrl + U`
	- 向前尋覽 `Ctrl + -`
	- 向後尋覽 `Ctrl + Shift + -`
	- Debug 逐步執行(不進入函式) `F10`
	- Debug 逐步執行(進入函式) `F11 `
	- 區塊符號起始/結束位置切換 `Ctrl + ]`
	- 快速 construct `ctor Tab Tab`
	- 重構名稱 `Ctrl + R,Ctrl +R`
	- 轉換小寫 `Ctrl + U`
	- 轉換大寫 `Ctrl + Shift + U`

## 語法
 - 遞迭出目錄檔案

	```
	foreach (var file in Directory.GetFiles("../../", "*.docx"))
	{
            ConvertToHtml(file, tempDi.FullName);
	}
	```
	
-  打印 log

	```
	using System.Diagnostics;
	
	Debug.WriteLine("");	
	```
	
- 是否可 null
	
	```
	public int? aa;
	or 
	Nullable<int>aa;
	```