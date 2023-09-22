. /etc/profile.d/modules.sh
module load mpi/openmpi-x86_64
export OMPI_MCA_rmaps_base_oversubscribe=yes
export TRAVIS=true
export FLEXIBLAS=NETLIB
mpirun -np 2 python3 test.py
