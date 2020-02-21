FROM amazonlinux:1

LABEL maintainer="Robert de Bock <robert@meinit.nl>"

ENV container=docker

RUN yum -y install upstart

VOLUME ["/sys/fs/cgroup"]
CMD ["/sbin/init"]
