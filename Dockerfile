FROM centos:7
MAINTAINER pch18.cn

#设置entrypoint映射到www文件夹下持久化
COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /www/letsencrypt \
    && ln -s /www/letsencrypt /etc/letsencrypt \
    && rm -f /etc/init.d \
    && mkdir /www/init.d \
    && ln -s /www/init.d /etc/init.d \
    && chmod +x /entrypoint.sh \
    && mkdir /www/wwwroot
    
    
#更新系统 安装依赖
RUN cd /home \
    && yum -y update 
#配置Wordpress
RUN bash -c "$(curl -fsSL https://git.io/JJKca)"
WORKDIR /www/wwwroot
CMD /entrypoint.sh
EXPOSE 443 1080
#HEALTHCHECK --interval=5s --timeout=3s CMD curl -fs http://localhost:443/ && curl -fs http://localhost/ || exit 1 
