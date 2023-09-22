FROM postgres:16.0-alpine3.18
RUN apk add --no-cache  musl-locale_langs musl-locales; echo Asia/Shanghai> /etc/timezone; ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; sed -i "s/eval 'initdb/eval 'initdb --locale-provider=icu --icu-locale=zh-Hans-x-icu/g" /usr/local/bin/docker-entrypoint.sh
ENV LANG zh_CN.utf8
LABEL postgres 16.0 w/ icu-locale zh-Hans-x-icu in Alpine

