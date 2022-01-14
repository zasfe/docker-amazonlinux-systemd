FROM amazonlinux:1

LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2022-01-14"

ENV container=docker

RUN yum -y install upstart

VOLUME ["/sys/fs/cgroup"]
CMD ["/sbin/init"]
