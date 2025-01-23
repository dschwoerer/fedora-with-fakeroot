ARG VER=rawhide
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install dnf5 && dnf5 -y builddep python3-xbout && dnf5 clean all && dnf clean all
