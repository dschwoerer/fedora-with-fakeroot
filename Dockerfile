ARG VER=rawhide
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install dnf5
RUN dnf5 -y install 'dnf-command(builddep)'
RUN dnf5 -y builddep python3-animatplot
RUN dnf5 clean all
