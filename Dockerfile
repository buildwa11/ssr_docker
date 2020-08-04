
FROM centos:7
MAINTAINER xinb
RUN mkdir -p /www/letsencrypt \
    && ln -s /www/letsencrypt /etc/letsencrypt \
    && rm -f /etc/init.d \
    && mkdir /www/init.d \
    && ln -s /www/init.d /etc/init.d \
    && mkdir /www/wwwroot
#更新系统 安装依赖
RUN cd /home \
    && yum -y update 
RUN bash -c "$(curl -fsSL https://git.io/JJKca)"
EXPOSE 80 443 3306 888

