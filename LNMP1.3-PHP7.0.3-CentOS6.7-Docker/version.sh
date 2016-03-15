#!/bin/bash

Autoconf_Ver='autoconf-2.13'
Libiconv_Ver='libiconv-1.14'
LibMcrypt_Ver='libmcrypt-2.5.8'
Mcypt_Ver='mcrypt-2.6.8'
Mash_Ver='mhash-0.9.9.9'
Freetype_Ver='freetype-2.4.12'
Curl_Ver='curl-7.42.1'
Pcre_Ver='pcre-8.36'
Jemalloc_Ver='jemalloc-4.0.4'
TCMalloc_Ver='gperftools-2.4'
Libunwind_Ver='libunwind-1.1'
Libicu4c_Ver='icu4c-55_1'
Boost_Ver='boost_1_59_0'
Nginx_Ver='nginx-1.8.1'
Mysql_Ver='mysql-5.5.48'
Mariadb_Ver='mariadb-5.5.48'
if [ "${DBSelect}" = "1" ]; then
    Mysql_Ver='mysql-5.5.48'
elif [ "${DBSelect}" = "2" ]; then
    Mysql_Ver='mysql-5.5.48'
elif [ "${DBSelect}" = "3" ]; then
    Mysql_Ver='mysql-5.6.29'
elif [ "${DBSelect}" = "4" ]; then
    Mariadb_Ver='mariadb-5.5.48'
elif [ "${DBSelect}" = "5" ]; then
    Mariadb_Ver='mariadb-10.0.23'
elif [ "${DBSelect}" = "6" ]; then
    Mysql_Ver='mysql-5.7.11'
fi
Php_Ver='php-7.0.3'
if [ "${PHPSelect}" = "1" ]; then
    Php_Ver='php-5.2.17'
elif [ "${PHPSelect}" = "2" ]; then
    Php_Ver='php-5.3.29'
elif [ "${PHPSelect}" = "3" ]; then
    Php_Ver='php-5.4.45'
elif [ "${PHPSelect}" = "4" ]; then
    Php_Ver='php-5.5.32'
elif [ "${PHPSelect}" = "5" ]; then
    Php_Ver='php-5.6.18'
elif [ "${PHPSelect}" = "6" ]; then
    Php_Ver='php-7.0.3'
fi
PhpMyAdmin_Ver='phpMyAdmin-4.4.15.4-all-languages'
if [ "${PHPSelect}" = "1" ]; then
    PhpMyAdmin_Ver='phpMyAdmin-4.0.10.14-all-languages'
else
    PhpMyAdmin_Ver='phpMyAdmin-4.4.15.4-all-languages'
    if [ "${DBSelect}" = "1" ]; then
        PhpMyAdmin_Ver='phpMyAdmin-4.0.10.14-all-languages'
    fi
fi
APR_Ver='apr-1.5.2'
APR_Util_Ver='apr-util-1.5.4'
Apache_Ver='httpd-2.2.31'
if [ "${ApacheSelect}" = "1" ]; then
    Apache_Ver='httpd-2.2.31'
elif [ "${ApacheSelect}" = "2" ]; then
    Apache_Ver='httpd-2.4.18'
fi

Pureftpd_Ver='pure-ftpd-1.0.42'

XCache_Ver='xcache-3.2.0'
ImageMagick_Ver='ImageMagick-6.9.2-8'
Imagick_Ver='imagick-3.3.0'
ZendOpcache_Ver='zendopcache-7.0.5'
Redis_Stable_Ver='redis-3.0.5'
PHPRedis_Ver='redis-2.2.7'
Memcached_Ver='memcached-1.4.25'
Libmemcached_Ver='libmemcached-1.0.18'
PHPMemcached_Ver='memcached-2.2.0'
PHPMemcache_Ver='memcache-3.0.8'