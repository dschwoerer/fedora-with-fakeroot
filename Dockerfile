ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install dnf-plugins-core fakeroot && dnf -y builddep firefox &&dnf -y clean all
