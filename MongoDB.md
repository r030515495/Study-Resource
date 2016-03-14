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

刪除 mongodb 服務

```
net stop MongoDB

"C:\mongodb\bin\mongod.exe" --remove
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





建立使用者

```bash
mongo
>use admin
>db.addUser("aaa","123456")

```

admin 是所有 DB  控制權


匯出資料

```bash

mongoexport --db ga --collection CollectionName --out CollectionName

```



匯入資料

```bash
mongoimport --db db --collection CollectionName --file CollectionName
```


如果有加上 --auth 要換成 password 要用 '  包覆

```bash 
mongoexport --db db  --username jcs --password 'password' --authenticationDatabase admin --collection CrawlerConfig --out CrawlerConfig.json

```


## 查詢

如果要搜尋 obj 底下的 key 要用 {"module.type":"line"}

如果只要顯示特定欄位則是加再第二欄位 

```json
{"configKey":1}  只出現 configKey
{"configKey":0}  只不出現 configKey
```

```js
db.getCollection('CollectionName').find(
	{"module.type":"line","showRate":true},
	{"configKey":1,"title":1,"module":1}
)
```

查詢陣列欄位長度

```js
db.getCollection('CollectionName').find({$where:"this.days.length > 1"})
```

排序特定欄位 1 遞增 ,-1 遞減

```js
db.getCollection('CollectionName').find({},{"lastDate":1}).sort({"lastDate":-1})
```

not 的寫法

```js
db.getCollection('CollectionName').find({"status":{$ne:"someThing"}})
```

in 的下法

```js
db.getCollection('CollectionName').find({"number":{$in:['AAA','BBB','CCC']}})
```

like 的下法

```js
db.getCollection('CollectionName').find({"date":{$regex:'Q'}}})
```

判斷 key 值是否存在

```js
db.getCollection('CollectionName').find({"editUpdate":{$exists:true}})
```


group by 特定 key 並做加總

```js
db.getCollection('CollectionName').aggregate(
	{"$group":{"_id":"$type","count":{"$sum":1}}}
)
```

group by 特定欄位，取出最小值，並排序

```js
	
db.getCollection('CollectionName').aggregate([
	{"$group":{"_id":"$groupbyColumn","minQuantity":{"$min":"$MinColumn"}}},
	{"$sort":{_id:1}}
	])
```

## 更新

更新特定欄位

```js
db.getCollection('CollectionName').update(
    // query 
    {},
    
    // update 
    {
        "$set":{"colName":"123"}
    },
    
    // options 
    {
        "multi" : true,  // 是否為多筆更新
        "upsert" : false  
    }
);
```

## 刪除

刪除特定欄位

```js
db.getCollection('CollectionName').update(
    // query 
    {"editUpdate":{$exists:true}},
    
    // update 
    {
        $unset:{"editUpdate":""}
    },
   
    // options 
    {
        "multi" : true, 
        "upsert" : false
    }
);
```
