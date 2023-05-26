#!/bin/bash
LD_LIBRARY_PATH=/home/n869p538/spack/var/spack/environments/qflex/.spack-env/view/lib:/home/n869p538/qflex/flexus/boost_1_70_0-build/lib:$LD_LIBRARY_PATH \
./../scripts/captain/captain ../scripts/captain/keen_config/system.ini  \
-o ./output