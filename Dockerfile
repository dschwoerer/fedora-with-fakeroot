ARG VER=rawhide
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install dnf5 && dnf5 -y install python3-dask+dataframe && dnf5 clean all && dnf clean all
