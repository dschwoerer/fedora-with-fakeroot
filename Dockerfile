ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER
RUN dnf -y install dnf-plugins-core
RUN dnf -y copr enable davidsch/fixes4bout
RUN dnf -y install python3-{mpi4py-,}openmpi
RUN adduser user
USER user
WORKDIR /home/user
COPY test.py .
COPY test.sh .
RUN bash test.sh
CMD ["bash", "test.sh"]
