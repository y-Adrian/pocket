#!/bin/bash
# 挂载点: /home/pocket  ↔  host: .../pocket
set -x
set -e

_WORK_ROOT="/home/pocket"
_SDK_ROOT="${_WORK_ROOT}/sdk/milkv-duo-sdk"

# envsetup 的 gettop() 从 $PWD 向上找 duo-sdk；从工作区根 source 时需显式指定 TOP
export TOP="${_SDK_ROOT}"
source "${_SDK_ROOT}/build/envsetup_milkv.sh" milkv-duos-musl-riscv64-sd || return 1

# envsetup 在 cvi_setup_env 里赋值但未 export；直接 make kernel-dts 会落到源码根目录
export KERNEL_OUTPUT_FOLDER RAMDISK_OUTPUT_FOLDER RAMDISK_OUTPUT_BASE

export CC=${CROSS_COMPILE}gcc
export CXX=${CROSS_COMPILE}g++
export AR=${CROSS_COMPILE}ar
export LD=${CROSS_COMPILE}ld

if [ -z "${KERNEL_OUTPUT_FOLDER}" ]; then
	echo "ERROR: KERNEL_OUTPUT_FOLDER is empty" >&2
	return 1
fi

if [ ! -f "${KERNEL_PATH}/${KERNEL_OUTPUT_FOLDER}/.config" ]; then
	echo "WARN: kernel not configured yet. Run: build_kernel" >&2
fi

echo "env ready: WORK_ROOT=${_WORK_ROOT}"
echo "env ready: KERNEL_OUTPUT_FOLDER=${KERNEL_OUTPUT_FOLDER}"
echo "env ready: CC=${CC}"