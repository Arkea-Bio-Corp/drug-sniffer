#!/usr/bin/env sh

set -e

rm -rf test/Run_*

docker run -u $(id -u):$(id -g) -v $PWD/test:/data \
    -e NUMBER_OF_PROCESSORS=12 \
    -e RECEPTOR_PATH=/opt/autogrow4/tutorial/PARP/4r6eA_PARP1_prepared.pdb \
    -e CENTER_X=-37.141998 \
    -e CENTER_Y=10.206000 \
    -e CENTER_Z=55.180000 \
    -e SIZE_X=16.0 \
    -e SIZE_Y=16.0 \
    -e SIZE_Z=16.0 \
    traviswheelerlab/03-denovo \
    run.sh

