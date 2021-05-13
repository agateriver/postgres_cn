FROM postgres:13.2
RUN localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8
ENV LANG zh_CN.utf8
LABEL postgres 13.2 with locale zh_CN.UTF-8
