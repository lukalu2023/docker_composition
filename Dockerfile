FROM registry.cn-hangzhou.aliyuncs.com/sxicc_luka/centos:amd64

WORKDIR /usr/src/app

COPY ./prepare.sh /usr/src/app/prepare.sh

RUN sh prepare.sh

RUN rm /usr/src/app/prepare.sh

CMD ["bin/sh"]
