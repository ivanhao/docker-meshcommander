#Author: ivanhao
#github: https://github.com/ivanhao/docker-meshcommander
FROM alpine:3.10.4
MAINTAINER ivanhao "ivanhao1984@qq.com"

WORKDIR /
ADD entrypoint.sh /entrypoint.sh

RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories \
&& echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories \
&& apk update \
&& apk add  nodejs npm bash&& \
        mkdir /meshcommander && \
        cd /meshcommander && \
        npm config set proxy null && \
        npm install meshcommander && \
        chmod +x /entrypoint.sh

EXPOSE 16992
ENTRYPOINT ["/entrypoint.sh"]
