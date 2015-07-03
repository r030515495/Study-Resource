# WildFly


## 上傳檔案大小限制

預設是 10MB(104857600)，若要增加大小要自行增加 max-post-size 的大小

```xml
<http-listener name="default" socket-binding="http" max-post-size="104857600"/>
```