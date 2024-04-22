ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER

COPY _copr:copr.fedorainfracloud.org:davidsch:testing.repo /etc/yum.repos.d/
RUN dnf install -y hermes-3-mpich && dnf clean all
