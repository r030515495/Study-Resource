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

## docker 指令

```sh

docker ps # 顯示執行中的 container 
docker ps -a  # 顯示執行過的 docker container 
docker run ubuntu:14.04 # 安裝和執行 ubuntu:14.04
docker run ubuntu:14.04 -d -p 9999:80 -v /usr:/web  # -d 背景執行 ，-p 對外的 Port:內部的 Port 、-v 參數要同步的資料夾、。
docker stop  ${container id or name}# 停止指定的 container
docker rm    ${container id or name}# 刪除指定的 container
docker start ${container id or name}# 啟動已經停止的 container
docker logs  ${container id or name}# 顯示 container 執行的 log 
docker exec -it jenkins bash # ssh 一個 name 為 jenkins 的 container
docker cp postgresql-redmine:/var/lib/postgresql ~/redmine/postgresql # 複製 postgresql-redmine contaniner 的內容到 本機目錄 ~/redmine/postgresql 下
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


``` sh
docker run --name=jenkins -d -p 9000:8080 \
	-v /etc/localtime:/etc/localtime   \
	-v ~/jenkins:/var/jenkins_home jenkins
```

設定到本機指定目錄
-d 背景執行
-p 啟動 jenkins 在 8080 port ，對外為 9000 
-v 等於  --volume=virtualbox 掛載位置 :/var/jenkins_home

localtime 是為了讓與 host 時區相同


## 增加 redmin Docker

[sameersbn/docker-redmine · GitHub](https://github.com/sameersbn/docker-redmine)

第一次啟動和安裝 postgresql db

```sh
docker run --name=postgresql-redmine -d \
  --env='DB_NAME=redmine_production' \
  --env='DB_USER=redmine' --env='DB_PASS=password' \
  -v ~/redmine/postgresql:/var/lib/postgresql \
  -v /etc/localtime:/etc/localtime \
  sameersbn/postgresql:9.4
```

第一次啟動和安裝 redmine

```sh
docker run --name=redmine -d \
  --link=postgresql-redmine:postgresql -p=9001:80 \
  --env='REDMINE_PORT=9001' \
  -v ~/redmine/redmine:/home/redmine/data \
  -v /etc/localtime:/etc/localtime \
  sameersbn/redmine:3.0.3pwd
```

以後只要執行

```sh
docker start postgresql-redmine

docker start redmine

```
停止 container
re
```sh
docker stop redmine

docker stop postgresql-redmine
```  
  
## 問題

- 遇到 -v 參數沒有作用或 Permission denied 時，要指定該目錄的權限

```sh  
sudo chown 1000 /home/core/jenkins/

sudo usermod -a -G docker root
```
