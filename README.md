### Forked Qflex

# Tested on:
```
n869p538@pollux:qemu$ gcc --version
gcc (Ubuntu 8.4.0-3ubuntu2) 8.4.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

n869p538@pollux:qemu$ uname -a
Linux pollux.ittc.ku.edu 5.15.0-72-generic #79~20.04.1-Ubuntu SMP Thu Apr 20 22:12:07 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

n869p538@pollux:qemu$ cat /proc/version_signature 
Ubuntu 5.15.0-72.79~20.04.1-generic 5.15.98
```

## Setup
* emulation mode
```sh
git submodule update --init --recursive .

cd qemu
./build_qemu.sh -emulation

cd ../images
./setup.sh


```

* Running in emulation
```
mkdir run
python3  .//scripts/captain/captain scripts/captain/emul_config/system.ini  -v DEBUG
```

### QFLEX OG INSTRUCTIONS

QFlex is an instrumentation framework with several tools for different use cases. We support trace-based simulation to quickly instrument existing QEMU images, timing models to simulate multi-core CPU microarchitectures in detail and an FPGA-accelerating mode which enables high-performing instrumented code. We based our framework on QEMU, a widely-used machine emulator, which is able to boot any machine and execute unmodified applications and operating systems. 

More information is available on the QFlex [website][qfw].

[![QFlex](http://qflex.epfl.ch/wp-content/uploads/2018/09/QFlex.png)](http://qflex.epfl.ch/)

# Licensing #

QFlex's software components are all available as open-source software. All of the software components are governed by 
their own licensing terms. Researchers interested in using QFlex are required to fully understand and abide by the 
licensing terms of the various components. For more information, please refer to the [license page][qfl].

# Running QFlex #

Instructions on how to run an example benchmark on matrix multiplication with QFlex are available [here][qfd]. Along with QFlex, we provide a 64-bit ARM version image of Ubuntu 16 [here][qfi]. This way, QFlex users can easily start running required workloads and perform a microarchitectural study of the aforementioned benchmark.

QFlex is and will always will be a work in progress, and at this stage, we are able to perform full-system simulation of a single server node (for 64-bit ARM). We are working on many other features including multi-node simulation.

# Support #

We encourage QFlex users to use GitHub issues for requests for enhancements, questions or bug fixes.

[qfw]: http://qflex.epfl.ch/
[qfl]: http://qflex.epfl.ch/license/
[qfd]: http://qflex.epfl.ch/download/
[qfi]: https://github.com/parsa-epfl/images
