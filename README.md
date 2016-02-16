# LNMP Docker

## LNMP1.2 PHP5.6.9 CentOS6.7 Docker

LNMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7 (64bit)

Nginx version: 1.8.0

Mysql verison: 5.5

PHP verison: 5.6.9

Root password: LNMP123

Mysql root password LNMP123

## LNMP1.2 PHP5.3.29 CentOS6.7 Docker

LNMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7 (64bit)

Nginx version: 1.8.0

Mysql verison: 5.5

PHP verison: 5.3.29

Root password: LNMP123

Mysql root password LNMP123

## LAMP1.2 PHP5.6.9 CentOS6.7 Docker

LAMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7

Apache version: 2.2.29

Mysql verison: 5.5

PHP verison: 5.6.9

Root password: LNMP123

Mysql root password: LNMP123

## LAMP1.2 PHP5.3.29 CentOS6.7 Docker

LAMP1.2 (Linux, Nginx, Mysql, PHP). For details, please check LNMP.org

CentOS verison: 6.7

Apache version: 2.2.29

Mysql verison: 5.5

PHP verison: 5.3.29

Root password: LNMP123

Mysql root password: LNMP123

					LNMP一键安装包 - Readme

LNMP一键安装包是什么?
—————————————————————

LNMP一键安装包是一个用Linux Shell编写的可以为CentOS/RadHat/Fedora、Debian/Ubuntu/Raspbian VPS(VDS)或独立主机安装LNMP(Nginx/MySQL/PHP)、LNMPA(Nginx/MySQL/PHP/Apache)、LAMP(Apache/MySQL/PHP)生产环境的Shell程序。同时提供一些实用的辅助工具如：虚拟主机管理、FTP用户管理、Nginx、MySQL/MariaDB、PHP的升级、常用缓存组件的安装、重置MySQL root密码、502自动重启、日志切割、SSH防护DenyHosts/Fail2Ban、备份等许多实用脚本。

LNMP官网：http://lnmp.org

作者: licess <admin@lnmp.org>
--------------------------------------------------------------------------------

安装
————
详细安装教程参考：http://lnmp.org/install.html

安装前建议使用screen，执行：screen -S lnmp 后
执行：wget -c http://soft.vpser.net/lnmp/lnmp1.2-full.tar.gz && tar zxf lnmp1.2-full.tar.gz && cd lnmp1.2-full && ./install.sh {lnmp|lnmpa|lamp}

如断线可使用screen -r lnmp 恢复。

常用功能
————————

以下操作需在lnmp1.2-full目录下执行：

FTP服务器：执行：./pureftpd.sh 安装，http://yourIP/ftp/ 进行管理，也可使用lnmp ftp {add|list|del}进行管理。

升级脚本：
执行：./upgrade.sh 按提示进行选择
也可以直接使用参数：./upgrade.sh {nginx|mysql|mariadb|php|phpa|m2m}
参数: nginx 可升级至任意Nginx版本。
参数: mysql 可升级至任意MySQL版本，MySQL升级风险较大，虽然会自动备份数据，依然建议自行再备份一下。
参数: mariadb 可升级已安装的Mariadb，虽然会自动备份数据，依然建议自行再备份一下。
参数: m2m    可从MySQL升级至Mariadb，虽然会自动备份数据，依然建议自行再备份一下。
参数: php   仅适用于LNMP，可升级至大部分PHP版本。
参数: phpa    可升级LNMPA/LAMP的PHP至大部分版本。


缓存加速：
执行: ./addons.sh {install|uninstall} {eaccelerator|xcache|memcached|opcache|redis|imagemagick|ioncube}
参数: xcache 安装时需选择版本和设置密码， http://yourIP/xcache/ 进行管理，用户名 admin，密码为安装xcache时设置的。
参数: redis
参数: memcached 可选择php-memcache或php-memcached扩展。
参数: opcache http://yourIP/ocp.php 进行管理。
参数: eaccelerator 安装。
请勿安装多个缓存类扩展模块，多个可能导致网站出现问题。

图像处理：
参数: imageMagick imageMagick路径：/usr/local/imagemagick/bin/。

解密：
可选1，执行：./ionCube.sh 安装。

其他：
可选1，执行：./php5.2.17.sh 可安装一个不与LNMP冲突的PHP 5.2.17单独存在，目录在/usr/local/php52/，使用时需要将nginx虚拟主机配置文件里的 php-cgi.sock 修改为 php-cgi52.sock即可调用PHP5.2.17。
可选2，执行：./reset_mysql_root_password.sh 可重置MySQL/MariaDB的root密码。
可选3，执行：./check502.sh  可检测php-fpm是否挂掉,502报错时重启，配合crontab使用。
可选4，执行：./cut_nginx_logs.sh 日志切割脚本。
可选5，执行：./remove_disable_function.sh 运行此脚本可删掉禁用函数。
可选6，如需卸载LNMP、LNMPA或LAMP可执行：./uninstall.sh 按提示选择即可卸载。

状态管理
————————

LNMP/LNMPA/LMAP状态管理：lnmp {start|stop|reload|restart|kill|status}
Nginx状态管理：lnmp nginx或/etc/init.d/nginx {start|stop|reload|restart}
MySQL状态管理：lnmp mysql或/etc/init.d/mysql {start|stop|restart|reload|force-reload|status}
MariaDB状态管理：lnmp mariadb或/etc/init.d/mariadb {start|stop|restart|reload|force-reload|status}
PHP-FPM状态管理：lnmp php-fpm或/etc/init.d/php-fpm {start|stop|quit|restart|reload|logrotate}
PureFTPd状态管理：lnmp pureftpd或/etc/init.d/pureftpd {start|stop|restart|kill|status}
Apache状态管理：lnmp httpd或/etc/init.d/httpd {start|stop|restart|graceful|graceful-stop|configtest|status}

虚拟主机管理
————————————
添加：lnmp vhost add
删除：lnmp vhost del
列出：lnmp vhost list

相关图形界面
————————————
PHPMyAdmin：http://yourIP/phpmyadmin/
phpinfo：http://yourIP/phpinfo.php
PHP探针：http://yourIP/p.php
PureFtp用户管理：http://yourIP/ftp/
Xcache管理界面：http://yourIP/xcache/
Zend Opcache管理界面：http://yourIP/ocp.php

LNMP相关目录文件
————————————————
目录位置
Nginx：/usr/local/nginx/
MySQL：/usr/local/mysql/
MariaDB：/usr/local/mariadb/
PHP：/usr/local/php/
PHPMyAdmin：/home/wwwroot/default/phpmyadmin/
默认虚拟主机网站目录：/home/wwwroot/default/
Nginx日志目录：/home/wwwlogs/

配置文件：
Nginx主配置文件：/usr/local/nginx/conf/nginx.conf
MySQL/MariaDB配置文件：/etc/my.cnf
PHP配置文件：/usr/local/php/etc/php.ini
PureFtpd配置文件：/usr/local/pureftpd/pure-ftpd.conf
PureFtpd MySQL配置文件：/usr/local/pureftpd/pureftpd-mysql.conf
Apache配置文件：/usr/local/apache/conf/httpd.conf