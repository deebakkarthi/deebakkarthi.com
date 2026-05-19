---
title: Verilator Setup
date:  2026-05-19T16:57:48-04:00
tags:
mathjax: false
---

Verilator requires the RISC-V toolchain

This was the last time CVA-6 toolchain builder was updated. Using that

https://github.com/openhwgroup/cva6/archive/25e6da9517806cb83acca00d47c7af7277a60418.zip

```bash
#export RISCV="/path/where/you/want/to/install/risc/toolchain"
export RISCV="$HOME/.local/riscv"
export NUM_JOBS=$(nproc)
bash get-toolchain.sh gcc-13.1.0-baremetal
bash build-toolchain.sh gcc-13.1.0-baremetal $RISCV
```


After building, running `riscv-none-elf-gcc -v` should look like this
```bash
Using built-in specs.
COLLECT_GCC=./riscv-none-elf-gcc
COLLECT_LTO_WRAPPER=/home/brg8ve/.local/riscv/libexec/gcc/riscv-none-elf/13.1.0/lto-wrapper
Target: riscv-none-elf
Configured with: /home/brg8ve/.local/src/cva6-25e6da9517806cb83acca00d47c7af7277a60418/util/toolchain-builder/src/gcc/configure --prefix=/home/brg8ve/.local/riscv --target=riscv-none-elf --enable-languages=c --disable-libssp --disable-libgomp --disable-libmudflap
Thread model: single
Supported LTO compression algorithms: zlib
gcc version 13.1.0 (GCC)
```


Need verilator
https://github.com/verilator/verilator/archive/refs/tags/v5.008.tar.gz


Need spike too

I am currently installing stuff using the last commit to the toolchain `25e6da9517806cb83acca00d47c7af7277a60418`


He uses the spike folder to link stuff

change cpp version