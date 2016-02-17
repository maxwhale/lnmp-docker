# LNMP1.2-PHP5.6.9-CentOS6.7-Docker

LNMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7 (64bit)

Nginx version: 1.8.0

Mysql verison: 5.5

PHP verison: 5.6.9

Root password: LNMP123

Mysql root password: LNMP123

## Usage

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.2-php5.6.9-centos6.7 ./run.sh```

```docker run --restart=always -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.2-php5.6.9-centos6.7 ./run.sh```

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -p 30000:80 -p 30001:21 -p 30002:22 -p 30003:3306 -p 30004:6379 -p 30005:11211 -ti --name LNMP registry.aliyuncs.com/max/lnmp1.2-php5.6.9-centos6.7 ./run.sh```