ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install fakeroot && dnf clean all
