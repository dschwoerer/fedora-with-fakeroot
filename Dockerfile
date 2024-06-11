ARG VER=rawhide
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf install 'dnf-command(builddep)' && dnf -y builddep python3-animatplot && dnf clean all
