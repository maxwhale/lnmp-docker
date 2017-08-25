# LNMP1.4-PHP7.1-CentOS6.7-Docker

LNMP1.4 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

Root password: LNMP123

Mysql root password: LNMP123

## Usage

```docker pull registry.cn-hangzhou.aliyuncs.com/max/lnmp1.4-php7.1-centos6.7```

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -P -ti --name LNMP rregistry.cn-hangzhou.aliyuncs.com/max/lnmp1.4-php7.1-centos6.7 ./run.sh```

```docker run --restart=always -P -ti --name LNMP registry.cn-hangzhou.aliyuncs.com/max/lnmp1.4-php7.1-centos6.7 ./run.sh```

```docker run --restart=always -e VIRTUAL_HOST=test1.test.com -p 30000:80 -p 30001:21 -p 30002:22 -p 30003:3306 -p 30004:6379 -p 30005:11211 -ti --name LNMP registry.cn-hangzhou.aliyuncs.com/max/lnmp1.4-php7.1-centos6.7 ./run.sh```