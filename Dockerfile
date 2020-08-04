
FROM centos:7
MAINTAINER xinb
#更新系统 安装依赖
RUN cd /home \
    && yum -y update 
RUN bash -c "$(curl -fsSL https://git.io/JJKca)"
EXPOSE 80 443 3306 888

