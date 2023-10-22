cmd_techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o := clang -Wp,-MD,techpack/audio/asoc/codecs/wcd934x/.wcd934x-tables.o.d  -nostdinc -isystem /root/proton-clang/lib/clang/13.0.0/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -I../techpack/audio/include/uapi -I../techpack/audio/include -include ../techpack/audio/config/trinketautoconf.h  -I../techpack/audio/asoc/codecs -Itechpack/audio/asoc/codecs -D__KERNEL__ -Qunused-arguments -Qunused-arguments -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -DANI_LITTLE_BYTE_ENDIAN -DANI_LITTLE_BIT_ENDIAN -DDOT11F_LITTLE_ENDIAN_HOST -DANI_COMPILER_TYPE_GCC -DANI_OS_TYPE_ANDROID=6 -DPTT_SOCK_SVC_ENABLE -Wall -Werror -D__linux__ -DANI_LITTLE_BYTE_ENDIAN -DANI_LITTLE_BIT_ENDIAN -DDOT11F_LITTLE_ENDIAN_HOST -DANI_COMPILER_TYPE_GCC -DANI_OS_TYPE_ANDROID=6 -DPTT_SOCK_SVC_ENABLE -Wall -Werror -D__linux__ -O3 -Wno-all -Wno-error -Wundef -Wstrict-prototypes -Wno-trigraphs -pipe -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -fno-stack-protector -std=gnu89 --target=aarch64-linux-gnu --prefix=/root/proton-clang/bin/aarch64-linux-gnu- --gcc-toolchain=/root/proton-clang -no-integrated-as -Werror=unknown-warning-option -fuse-ld=/root/proton-clang/bin/ld.lld -fuse-ld=lld -fno-PIE -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -fno-pic -DCONFIG_ARCH_SUPPORTS_INT128 -Wno-asm-operand-widths -DKASAN_SHADOW_SCALE_SHIFT=3 -mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -fno-delete-null-pointer-checks -Wno-frame-address -Wno-int-in-bool-context -Wno-address-of-packed-member -O3 -pipe --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -Wno-tautological-compare -mno-global-merge -fno-delete-null-pointer-checks -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -ffunction-sections -fdata-sections -flto=thin -fvisibility=default -fsplit-lto-unit -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -Os  -I/root/android_kernel_xiaomi_trinket-10.0-Q/out/kernel/msm-4.14/techpack/audio/include  -I/root/android_kernel_xiaomi_trinket-10.0-Q/out/kernel/msm-4.14/techpack/audio/include/uapi -Wheader-guard    -DKBUILD_BASENAME='"wcd934x_tables"'  -DKBUILD_MODNAME='"wcd_core_dlkm"' -c -o techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o ../techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.c

source_techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o := ../techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.c

deps_techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o := \
    $(wildcard include/config/ctl/0.h) \
    $(wildcard include/config/ctl/1.h) \
    $(wildcard include/config/ctl/2.h) \
    $(wildcard include/config/ctl/3.h) \
    $(wildcard include/config/ctl/4.h) \
    $(wildcard include/config/1.h) \
    $(wildcard include/config/2.h) \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  ../techpack/audio/config/trinketautoconf.h \
    $(wildcard include/config/pinctrl/wcd.h) \
    $(wildcard include/config/audio/ext/clk.h) \
    $(wildcard include/config/snd/soc/wcd9xxx/v2.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc.h) \
    $(wildcard include/config/snd/soc/wsa881x.h) \
    $(wildcard include/config/snd/soc/wcd/dsp/mgr.h) \
    $(wildcard include/config/snd/soc/wcd/spi.h) \
    $(wildcard include/config/snd/soc/wcd934x.h) \
    $(wildcard include/config/snd/soc/wcd934x/mbhc.h) \
    $(wildcard include/config/snd/soc/wcd934x/dsd.h) \
    $(wildcard include/config/snd/soc/cpe.h) \
    $(wildcard include/config/snd/soc/wcd/cpe.h) \
    $(wildcard include/config/snd/soc/wcd9335.h) \
    $(wildcard include/config/wcd9xxx/codec/core.h) \
    $(wildcard include/config/msm/cdc/pinctrl.h) \
    $(wildcard include/config/msm/qdsp6v2/codecs.h) \
    $(wildcard include/config/msm/ultrasound.h) \
    $(wildcard include/config/msm/qdsp6/aprv2/rpmsg.h) \
    $(wildcard include/config/snd/soc/msm/qdsp6v2/intf.h) \
    $(wildcard include/config/msm/adsp/loader.h) \
    $(wildcard include/config/regmap/swr.h) \
    $(wildcard include/config/msm/qdsp6/ssr.h) \
    $(wildcard include/config/msm/qdsp6/pdr.h) \
    $(wildcard include/config/msm/qdsp6/notifier.h) \
    $(wildcard include/config/snd/soc/msm/hostless/pcm.h) \
    $(wildcard include/config/snd/soc/sm6150.h) \
    $(wildcard include/config/msm/glink/spi/xprt.h) \
    $(wildcard include/config/wcd/dsp/glink.h) \
    $(wildcard include/config/soundwire.h) \
    $(wildcard include/config/soundwire/mstr/ctrl.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc/adc.h) \
    $(wildcard include/config/snd/soc/wcd/mbhc/legacy.h) \
    $(wildcard include/config/snd/soc/qdsp6v2.h) \
    $(wildcard include/config/qti/pp.h) \
    $(wildcard include/config/snd/hwdep/routing.h) \
    $(wildcard include/config/dts/eagle.h) \
    $(wildcard include/config/dolby/ds2.h) \
    $(wildcard include/config/dolby/license.h) \
    $(wildcard include/config/dts/srs/tm.h) \
    $(wildcard include/config/snd/soc/msm/stub.h) \
    $(wildcard include/config/msm/avtimer.h) \
    $(wildcard include/config/avtimer/legacy.h) \
    $(wildcard include/config/snd/soc/msm/hdmi/codec/rx.h) \
    $(wildcard include/config/snd/soc/bolero.h) \
    $(wildcard include/config/wsa/macro.h) \
    $(wildcard include/config/va/macro.h) \
    $(wildcard include/config/rx/macro.h) \
    $(wildcard include/config/tx/macro.h) \
    $(wildcard include/config/snd/soc/wcd/irq.h) \
    $(wildcard include/config/snd/soc/wcd937x.h) \
    $(wildcard include/config/snd/soc/wcd937x/slave.h) \
    $(wildcard include/config/snd/event.h) \
    $(wildcard include/config/snd/soc/max98937.h) \
    $(wildcard include/config/snd/soc/tas2562.h) \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \
  ../techpack/audio/include/asoc/wcd934x_registers.h \

techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o: $(deps_techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o)

$(deps_techpack/audio/asoc/codecs/wcd934x/wcd934x-tables.o):
