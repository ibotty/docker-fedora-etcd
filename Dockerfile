FROM fedora:22
MAINTAINER Tobias Florek tob@butter.sh

EXPOSE 2379 2380

VOLUME ["/var/lib/etcd"]

RUN dnf --setopt=tsflags=nodocs -y etcd \
 && dnf clean all

ENTRYPOINT ["/usr/bin/etcd"]
