# Vagrant 

## 相關解釋

`VagrantFile` 記錄一個 vm 需要的設定。

`Box` 一個虛擬機的硬碟檔，相同名稱的 box 下載過一次後就不會重新下載。並可以區分多個版本。啟動一個新的 vm 會直接複製該檔案來啟動。



## 指令

```sh
vagrant init # 初始化 產生 Vagrantfile
vagrant up # 啟動目前 Vagrantfile 的 VM
vagrant halt # 停止當前目錄的 VM
vagrant destroy # 刪除當前目錄的 VM
vagrant ssh # 登入到當前目錄的 VM
vagrant package # 打包目前執行目錄的 vm 變成一個 package.box

vagrant box list # 列出目前已經儲存的 Box
vagrant box add chef/centos-7.0 # 增加一個 chef/centos-7.0 的 Box，會從遠端去下載
vagrant box add package.box --name centos7-docker # 將 package.box 檔案 打包到 box 內，以後可以重複使用
```

## Vagrantfile 設定

- 基本設定

```ruby
config.vm.box = "chef/centos-7.0" # 使用的 box
config.vm.hostname = "CentOS7"    # 使用的 vm 的 hostName
config.ssh.username= "root"		 # ssh 預設的帳號設定，一開始預設都是 vagrant ,要先修改 VM 內的帳號密碼後在修改此參數
config.ssh.password="test"			 # ssh 預設的密碼設定，一開始預設都是 vagrant ,要先修改 VM 內的帳號密碼後在修改此參數
```

- 設定對外的橋接網路，bridge 是指本機的網卡名稱

```ruby 
config.vm.network "public_network",ip: "192.168.1.98",bridge:'en0'
```


- 設定啟動後要執行的 shell

```ruby
config.vm.provision "shell",
   path: "../install.sh",
   run: "always" #表示每次啟動都執行
```