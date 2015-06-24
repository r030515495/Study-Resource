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
mongod.exe --dbpath=D:\Mongodb_data --logpath=D:\Mongodb_log\mongodb.log --install

```

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