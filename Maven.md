# MAVEN 筆記

可以將相依的 jar 也包進去的

```
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

```
<plugin>
	<groupId>org.apache.maven.plugins</groupId>
	<artifactId>maven-antrun-plugin</artifactId>
	<version>1.1</version>
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

```
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


