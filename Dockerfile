ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER

dnf -y install fakeroot && dnf clean all
