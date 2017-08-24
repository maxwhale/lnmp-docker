# LNMP1.3-PHP7.0.7-CentOS6.7-Docker

LNMP1.3 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7 (64bit)

Nginx version: 1.8.1

Mysql verison: 5.5

PHP verison: 7.0.7

Root password: LNMP123

Mysql root password: LNMP123

## Usage

```docker pull registry.aliyuncs.com/max/lnmp1.3-php7.0.7-centos6.7```

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.3-php7.0.7-centos6.7 ./run.sh```

```docker run --restart=always -P -ti --name LNMP registry.aliyuncs.com/max/lnmp1.3-php7.0.7-centos6.7 ./run.sh```

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -p 30000:80 -p 30001:21 -p 30002:22 -p 30003:3306 -p 30004:6379 -p 30005:11211 -ti --name LNMP registry.aliyuncs.com/max/lnmp1.3-php7.0.7-centos6.7 ./run.sh```