# 公共编译配置 — Docker 内先 source scripts/envsetup.sh
ROOT_DIR := $(realpath $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

ARCH          := riscv
CROSS_COMPILE := riscv64-unknown-linux-musl-

# duo-sdk 默认与本仓库同级；可 export DUO_SDK_ROOT 覆盖
DUO_SDK       ?= $(abspath $(ROOT_DIR)/sdk/milkv-duo-sdk)
KDIR          := $(DUO_SDK)/linux_5.10/build/sg2000_milkv_duos_musl_riscv64_sd
OUT_DIR       := $(shell realpath $(dir $(abspath $(lastword $(MAKEFILE_LIST))))/output)