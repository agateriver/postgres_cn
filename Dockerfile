FROM postgres:15.0
RUN localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8; echo Asia/Shanghai> /etc/timezone; rm /etc/localtime; ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; sed -i "s/eval 'initdb/eval 'initdb --locale-provider=icu --icu-locale=zh-Hans-x-icu/g" /usr/local/bin/docker-entrypoint.sh
ENV LANG zh_CN.utf8
LABEL postgres 15.0 with icu-locale zh-Hans-x-icu

