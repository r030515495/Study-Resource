# WildFly


## 上傳檔案大小限制

預設是 10MB(104857600)，若要增加大小要自行增加 max-post-size 的大小

```xml
<http-listener name="default" socket-binding="http" max-post-size="104857600"/>
```


修改服務的使用 ram 大小 standalone.conf.bat

```
set "JAVA_OPTS=-Xms64M -Xmx1024M -XX:MaxPermSize=256M"
```

在 datasource 中加入這段，會自動在 DB 可以連線的時候自動連線

``` xml
<datasource>
	<validation>
		<check-valid-connection-sql>select 1</check-valid-connection-sql>
		<validate-on-match>false</validate-on-match>
		<background-validation>true</background-validation>
		<background-validation-millis>10000</background-validation-millis>
	</validation>
	...
</datasource>
```

修改 log 路徑 

```
wildfly-8.2.0.Final/standalone/configuration/logging.properties

org.jboss.boot.log.file
```