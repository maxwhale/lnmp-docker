#
# MAINTAINER          Max
# DOCKER-VERSION      1.10
# CENTOS-VERSION      6.7
# LNMP-VERSION        1.3 www.lnmp.org
# Dockerfile-VERSION  3.0
# DATE                03/14/2016
#

FROM centos:6.7
MAINTAINER Max

ENV TZ "Asia/Shanghai"
ENV TERM xterm

ADD aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
ADD aliyun-epel.repo /etc/yum.repos.d/epel.repo

# Update
RUN yum -y update

RUN yum -y install wget tar screen htop passwd nano openssh-server vsftpd pwgen && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_dsa_key && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM yes/g" /etc/ssh/sshd_config

# Download and install lnmp1.3.
RUN wget -c https://api.sinas3.com/v1/SAE_lnmp/soft/lnmp1.3beta-full.tar.gz --no-check-certificate && tar zxf lnmp1.3beta-full.tar.gz -C root && rm -rf lnmp1.3beta-full.tar.gz

ADD centos.sh /root/lnmp1.3beta-full/centos.sh
ADD main-centos.sh /root/lnmp1.3beta-full/include/main-centos.sh
ADD version-centos.sh /root/lnmp1.3beta-full/include/version-centos.sh
RUN chmod +x /root/lnmp1.3beta-full/centos.sh
RUN cd /root/lnmp1.3beta-full && \   
    ./centos.sh lnmp

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV AUTHORIZED_KEYS **None**
ENV ROOT_PASS LNMP123

VOLUME ["/home"]

EXPOSE 80 
EXPOSE 21 
EXPOSE 22 
EXPOSE 3306
EXPOSE 6379
EXPOSE 11211

CMD ["/run.sh"]
