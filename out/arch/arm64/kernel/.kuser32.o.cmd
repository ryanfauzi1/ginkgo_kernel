cmd_arch/arm64/kernel/kuser32.o := clang -Wp,-MD,arch/arm64/kernel/.kuser32.o.d  -nostdinc -isystem /root/proton-clang/lib/clang/13.0.0/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments -Qunused-arguments -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=/root/proton-clang/bin/aarch64-linux-gnu- --gcc-toolchain=/root/proton-clang -no-integrated-as -Werror=unknown-warning-option -fuse-ld=/root/proton-clang/bin/ld.lld -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3 -DCC_HAVE_ASM_GOTO   -c -o arch/arm64/kernel/kuser32.o ../arch/arm64/kernel/kuser32.S

source_arch/arm64/kernel/kuser32.o := ../arch/arm64/kernel/kuser32.S

deps_arch/arm64/kernel/kuser32.o := \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \

arch/arm64/kernel/kuser32.o: $(deps_arch/arm64/kernel/kuser32.o)

$(deps_arch/arm64/kernel/kuser32.o):
