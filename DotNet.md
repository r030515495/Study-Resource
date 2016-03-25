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


