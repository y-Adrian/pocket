## 构建内核失败
在 sdk 目录下执行 build_kernel 失败，具体错误如下：
```bash
make: /home/pocket/sdk/milkv-duo-sdk/u-boot-2021.10/build/sg2000_milkv_duos_musl_riscv64_sd/tools/mkimage: No such file or directory
make: *** [Makefile:425: boot] Error 127
```

根因分析：缺少 mkimage 工具， U-Boot tools 没有编译成功，进入 U-Boot，执行以下命令：
```bash
cd /home/pocket/sdk/milkv-duo-sdk/u-boot-2021.10
make tools
```

遇到如下报错：
```bash
root@083382de6346:/home/pocket/sdk/milkv-duo-sdk# cd /home/pocket/sdk/milkv-duo-sdk/u-boot-2021.10/
root@083382de6346:/home/pocket/sdk/milkv-duo-sdk/u-boot-2021.10# make tools
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  YACC    scripts/kconfig/zconf.tab.c
  LEX     scripts/kconfig/zconf.lex.c
  HOSTCC  scripts/kconfig/zconf.tab.o
  HOSTLD  scripts/kconfig/conf
scripts/kconfig/Makefile:105: *** No configuration exists for this target on this architecture.  Stop.
scripts/kconfig/conf  --syncconfig Kconfig
arch/arm/mach-imx/mx7/Kconfig:22:warning: config symbol defined without type
arch/arm/mach-socfpga/Kconfig:24:warning: config symbol defined without type
arch/x86/Kconfig:949:warning: 'X86_OFFSET_SPL': number is invalid
common/spl/Kconfig:924:warning: config symbol defined without type
***
*** Configuration file ".config" not found!
***
*** Please run some configurator (e.g. "make oldconfig" or
*** "make menuconfig" or "make xconfig").
***
make[2]: *** [scripts/kconfig/Makefile:75: syncconfig] Error 1
make[1]: *** [Makefile:578: syncconfig] Error 2
make: *** No rule to make target 'include/config/auto.conf', needed by 'include/config/uboot.release'.  Stop.
```