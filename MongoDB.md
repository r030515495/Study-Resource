# MongoDB

## 安裝

### Windows

先建立 LOG 和 DB 存檔的資料夾

```
D:\mongodb_data
D:\mongodb_log
```

將目錄加入到 環境變數中的 Path

```
;D:\Mongodb\bin
```
將 mongodb 變成服務

```bash
mongod.exe --dbpath=D:\mongodb_data --logpath=D:\mongodb_log\mongodb.log --auth --install 
```

- --auth 啟用帳號驗證
- --dbpath 資料儲存的位置
- --logpath log的輸出位置

啟動 mongodb

```bash
net start MongoDB
```

27017 port 是對外的連接 可以確認是否啟動成功
```
http://localhost:27017/
```

28017 port 是顯示系統資訊

```
http://localhost:28017/
```

再輸入規則中要開啟這兩個 port





建立使用者

```bash
mongo
>use admin
>db.addUser("aaa","123456")

```

admin 是所有 DB  控制權