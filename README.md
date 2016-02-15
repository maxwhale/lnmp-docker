# LNMP CentOS Docker

LNMP1.2 (Linux, nginx, mysql, php) Centos6.7 for docker file, more details check: LNMP.org

CentOS verison: 6.7

Nginx version: 1.8.0

Mysql verison: 5.5

PHP verison: 5.6.9

Root password: LNMP123

Mysql root password: LNMP123

After login SSH, run lnmp start

Docker运行命令示例：

docker run --restart=always -e VIRTUAL_HOST=test1.test.com -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.2-centos6.7-docker ./run.sh

## 一、Centos：
可以设置SSH登陆密码**ROOT_PASS**变量

*ROOT_PASS：Password*

不设置为自动生成**ROOT_PASS**登陆密码

详细日志中查看

## 二、采用官网的lnmp一键包(lnmp.org)
### 1)连接SSH后，运行lnmp start
### 2)集成lnmp1.2,无需再次安装

## 三、其他相关
直接上官网的教程，这里就不再讲太多了，官网讲得详细。
+ [添加、删除虚拟主机及伪静态管理](http://lnmp.org/faq/lnmp-vhost-add-howto.html "添加、删除虚拟主机及伪静态管理")
+ [eAccelerator、xcache、memcached、imageMagick、ionCube、redis、opcache的安装](http://lnmp.org/faq/addons.html "eAccelerator、xcache、memcached、imageMagick、ionCube、redis、opcache的安装")
+ [LNMP相关软件目录及文件位置](http://lnmp.org/faq/lnmp-software-list.html "LNMP相关软件目录及文件位置")
+ [LNMP状态管理命令](http://lnmp.org/faq/lnmp-status-manager.html "LNMP状态管理命令")
