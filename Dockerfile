FROM alpine:3.10.4

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

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
