#
# MAINTAINER         Max
# DOCKER-VERSION     1.10
# CENTOS-VERSION     6.7
# LNMP-VERSION       1.2 www.lnmp.org
# Dockerfile-VERSION 2.0
# DATE               02/17/2016
#

# Pull base image.
FROM centos:6.7
MAINTAINER Max

# Modify timezone.
ENV TZ "Asia/Shanghai"
ENV TERM xterm

# Add aliyun repo
ADD aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
ADD aliyun-epel.repo /etc/yum.repos.d/epel.repo

# Yum update
RUN yum -y update

# Install packages & SSH service
RUN yum -y install wget tar screen htop passwd nano openssh-server && \
    sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && \
    sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

# Download & extract lnmp1.2-full.tar.gz & delete lnmp1.2-full.tar.gz
RUN wget -c https://api.sinas3.com/v1/SAE_lnmp/soft/lnmp1.2-full.tar.gz --no-check-certificate && tar zxf lnmp1.2-full.tar.gz -C root && rm -rf lnmp1.2-full.tar.gz

# ADD modified LNMP files
ADD centos.sh /root/lnmp1.2-full/centos.sh
ADD main-centos.sh /root/lnmp1.2-full/include/main-centos.sh
ADD version-centos.sh /root/lnmp1.2-full/include/version-centos.sh

# Set permission
RUN chmod +x /root/lnmp1.2-full/centos.sh

# Install LNMP1.2
RUN cd /root/lnmp1.2-full && \   
    ./centos.sh

# Delete trash files in lnmp1.2-full folder 
RUN cd /root/lnmp1.2-full/src && \
    rm -rf `ls -I patch`

# Add run file
ADD run.sh /run.sh

# Set permission 
RUN chmod +x /run.sh

# Set environment variables.
ENV AUTHORIZED_KEYS **None**
ENV ROOT_PASS LNMP123

# Define mountable directories.
VOLUME ["/home"]

# Expose ports.
EXPOSE 80 21 22 3306 6379 11211

# Define default command.
CMD ["/run.sh"]
