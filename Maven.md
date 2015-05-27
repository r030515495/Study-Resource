# MAVEN 筆記


設定 properties 這些是 maven 預設抓取的值，沒有設定的話會使用系統設定

```xml
<properties>
	<!-- 專案的編碼設定 -->
	<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
	<!-- 專案的預設 java 版本 -->
	<maven.compiler.source>1.8</maven.compiler.source>
	<maven.compiler.target>1.8</maven.compiler.target>
	<maven.compiler.compilerVersion>1.8</maven.compiler.compilerVersion>
</properties>

```

可以將相依的 jar 也包進去的

```xml
<plugin>
	<artifactId>maven-assembly-plugin</artifactId>
		<configuration>
			<descriptorRefs>
				<descriptorRef>jar-with-dependencies</descriptorRef>
			</descriptorRefs>
		</configuration>
		<executions>
		<execution>
			<phase>package</phase>
			<goals>
				<goal>single</goal>
			</goals>
		</execution>
	</executions>
</plugin>
```

使用 Ant 複製檔案

```xml
<plugin>
	<groupId>org.apache.maven.plugins</groupId>
	<artifactId>maven-antrun-plugin</artifactId>
	<version>1.8</version>
	<executions>
		<execution>
			<phase>package</phase>
				<goals>
					<goal>run</goal>
				</goals>
				<configuration>
					<tasks>
						<echo>複製 A.jar 到 特定資料夾</echo>
						<copy file="${project.build.directory}/${project.build.finalName}/WEB-INF/lib/A.jar" tofile="${warOutPutPath}/A.jar" />
					</tasks>
				</configuration>
			</execution>
		</executions>
</plugin>
```

產生程式碼覆蓋率報表

```xml
<plugin>
	<groupId>org.codehaus.mojo</groupId>
	<artifactId>cobertura-maven-plugin</artifactId>
	<version>2.6</version>
	<configuration>
		<formats>
			<format>html</format>
		</formats>
		<outputDirectory>/Users/rex/Downloads/EM/report/</outputDirectory>
	</configuration>
</plugin>
```

分析 Pom.xml 的相依情形


```
mvn dependency:analyze

Used undeclared dependencies  表示有使用但沒有定義在自己的 pom 上	

Unused declared dependencies 沒有使用到的 dependencies
```
顯示 Maven Properties 可用的

```
mvn help:expressions
```

將 pom.xml 上的相依 jar 檔，複製到指定目錄

```xml
<plugin>
	<groupId>org.apache.maven.plugins</groupId>
	<artifactId>maven-dependency-plugin</artifactId>
	<version>2.10</version>
	<configuration>
		<outputDirectory>${basedir}/lib</outputDirectory>
	</configuration>
</plugin>
```

清除 eclipse 原本的設定重新設定

```sh
eclipse:clean eclipse:eclipse eclipse:configure-workspace  -Declipse.workspace="your Eclipse Workspace"
```

- 如果遇到 No plugin found for prefix 'wildfly' ，要在 maven 的 setting.xml 加入以下，maven 才有辦法辨識
```xml
<pluginGroups>
  <pluginGroup>org.wildfly.plugins</pluginGroup>
</pluginGroups>
```