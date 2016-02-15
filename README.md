# LNMP CentOS Docker

LNMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7

Nginx version: 1.8.0

Mysql verison: 5.5

PHP verison: 5.6.9

Root password: LNMP123

Mysql root password: LNMP123

After login SSH, run 

```lnmp start```

# Docker运行命令示例

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.2-centos6.7-docker ./run.sh```
