FROM centos:7
MAINTAINER xinb
#更新系统 安装依赖
RUN cd /home \
    && yum -y update 
#配置Wordpress
RUN bash -c "$(curl -fsSL https://git.io/JJKca)"
WORKDIR /www/wwwroot
CMD /entrypoint.sh
EXPOSE 443 1080
#HEALTHCHECK --interval=5s --timeout=3s CMD curl -fs http://localhost:443/ && curl -fs http://localhost/ || exit 1 
