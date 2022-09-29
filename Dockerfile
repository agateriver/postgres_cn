FROM postgres:14.5
RUN localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8; echo Asia/Shanghai> /etc/timezone; rm /etc/localtime; ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG zh_CN.utf8
LABEL postgres 14.5 with locale zh_CN.UTF-8
