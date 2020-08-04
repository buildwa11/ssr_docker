
FROM centos:7
#更新系统 安装依赖
RUN cd /home \
    && yum -y update 
#RUN bash -c "$(curl -fsSL https://git.io/JJKca)"
RUN echo bash -c "$(curl -fsSL https://git.io/fNpuL)"
RUN vi /etc/shadowsocks.json
EXPOSE 443

