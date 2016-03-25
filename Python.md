# Python

- 執行 pip install 發生錯誤

	在 ~/.pydistutils.cfg 產生檔案內容為

	```
	[install]
	prefix=
	```
- py to pyc 

  ```
  python -m compileall .
  ``` 
- pip install 指定目錄

  ```
  pip install zimuzu -t ~/login-zimuzu
  ```