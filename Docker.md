# Docker 

## 安裝 boot2docker

```sh
brew install boot2docker
```

## boot2docker 指令

```sh
boot2docker ssh # ssh 到 boot2docker
boot2docker ip # 顯示 boot2docker ip
boot2docker up # 啟動 boot2docker
boot2docker stop # 停止 boot2docker
boot2docker upgrade # 更新 boot2docker
```

## 設定靜態網路

增加 VirtualBox 的網路介面，橋接介面卡。

用 `boot2docker ssh` 進去 boot2docker 設定網路

新增一個 bootlocal.sh 的檔案到指定位置

```sh
sudo vi /var/lib/boot2docker/bootlocal.sh
```
設定檔案內容

```sh
ifconfig eth2 192.168.1.200
```
修改檔案權限

```sh
sudo chmod 755 /var/lib/boot2docker/bootlocal.sh
```

## 增加 boot2docker 硬碟大小

[b2d_volume_resize](https://docs.docker.com/articles/b2d_volume_resize/)


## 增加 Jenkins Docker 

[jenkinsci/docker · GitHub](https://github.com/jenkinsci/docker)

啟動 jenkins 在 8080 port ，對外為 9000 , 設定 jenkins_homme 目錄

``` sh
docker run -p 9000:8080 -v /your/home:/var/jenkins_home jenkins
```

設定到本機指定目錄
  --volume=virtualbox 掛載位置 :/var/jenkins_home


## 增加 redmin Docker

[sameersbn/docker-redmine · GitHub](https://github.com/sameersbn/docker-redmine)

啟動 postgresql db

```sh
docker run --name=postgresql-redmine -d \
  --env='DB_NAME=redmine_production' \
  --env='DB_USER=redmine' --env='DB_PASS=password' \
  --volume=/srv/docker/redmine/postgresql:/var/lib/postgresql \
  sameersbn/postgresql:9.4  
```

設定到本機指定目錄
  --volume=virtualbox 掛載位置 :/var/lib/postgresql

啟動 redmine

```sh
docker run --name=redmine -d \
  --link=postgresql-redmine:postgresql --publish=10083:80 \
  --env='REDMINE_PORT=10083' \
  --volume=/srv/docker/redmine/redmine:/home/redmine/data \
  sameersbn/redmine:3.0.3
```
設定到本機指定目錄
  --volume=virtualbox 掛載位置 :/home/redmine/data
