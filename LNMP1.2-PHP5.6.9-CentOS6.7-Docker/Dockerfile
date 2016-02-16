#
# MAINTAINER        Max
# DOCKER-VERSION    1.10
# CENTOS-VERSION    6.7
# LNMP-VERSION      1.2 www.lnmp.org
# VERSION           1.0
# DATE              02/08/2016
# Dockerfile for building LNMP image base on Centos6.7
#

FROM centos:6.7
MAINTAINER Max

ENV TZ "Asia/Shanghai"
ENV TERM xterm

ADD aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
ADD aliyun-epel.repo /etc/yum.repos.d/epel.repo

# Update
RUN yum -y update

RUN yum -y install openssh-server && \
    yum -y install pwgen && \
    rm -f /etc/ssh/ssh_host_ecdsa_key /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM yes/g" /etc/ssh/sshd_config
    
# Install wget tar screen htop passwd nano packages
RUN yum -y install wget tar screen htop passwd nano

# Download and install lnmp1.2.
RUN wget -c https://api.sinas3.com/v1/SAE_lnmp/soft/lnmp1.2-full.tar.gz --no-check-certificate && tar zxf lnmp1.2-full.tar.gz -C root && rm -rf lnmp1.2-full.tar.gz

ADD centos.sh /root/lnmp1.2-full/centos.sh
ADD main-centos.sh /root/lnmp1.2-full/include/main-centos.sh
ADD version-centos.sh /root/lnmp1.2-full/include/version-centos.sh
RUN chmod +x /root/lnmp1.2-full/centos.sh
RUN cd /root/lnmp1.2-full && \   
    ./centos.sh

RUN cd /root/lnmp1.2-full/src && \
    rm -rf `ls -I patch`

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV AUTHORIZED_KEYS **None**
ENV ROOT_PASS LNMP123

VOLUME ["/home"]

EXPOSE 80 21 22 3306 6379 11211

CMD ["/run.sh"]
