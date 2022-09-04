FROM postgres:14.5
RUN localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8
ENV LANG zh_CN.utf8
LABEL postgres 14.5 with locale zh_CN.UTF-8
