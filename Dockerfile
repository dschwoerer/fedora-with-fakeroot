ARG VER=rawhide
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install dnf5 && dnf5 -y install 'dnf-command(build-dep)' && dnf5 -y build-dep python3-animatplot && dnf5 clean all && dnf clean all
