cmd_arch/arm64/boot/dts/qcom/trinket.dtb := mkdir -p arch/arm64/boot/dts/qcom/ ; clang -E -Wp,-MD,arch/arm64/boot/dts/qcom/.trinket.dtb.d.pre.tmp -nostdinc -I../scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/qcom/.trinket.dtb.dts.tmp ../arch/arm64/boot/dts/qcom/trinket.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/qcom/trinket.dtb -b 0 -i../arch/arm64/boot/dts/qcom/ -i../scripts/dtc/include-prefixes -@ -q -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg -Wno-avoid_default_addr_size -Wno-reg_format  -d arch/arm64/boot/dts/qcom/.trinket.dtb.d.dtc.tmp arch/arm64/boot/dts/qcom/.trinket.dtb.dts.tmp ; cat arch/arm64/boot/dts/qcom/.trinket.dtb.d.pre.tmp arch/arm64/boot/dts/qcom/.trinket.dtb.d.dtc.tmp > arch/arm64/boot/dts/qcom/.trinket.dtb.d

source_arch/arm64/boot/dts/qcom/trinket.dtb := ../arch/arm64/boot/dts/qcom/trinket.dts

deps_arch/arm64/boot/dts/qcom/trinket.dtb := \
  ../arch/arm64/boot/dts/qcom/trinket.dtsi \
  ../arch/arm64/boot/dts/qcom/skeleton64.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,rpmcc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-trinket.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,cpucc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,dispcc-trinket.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gpucc-trinket.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,videocc-trinket.h \
  ../scripts/dtc/include-prefixes/dt-bindings/iio/qcom,spmi-vadc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/spmi/spmi.h \
  ../scripts/dtc/include-prefixes/dt-bindings/regulator/qcom,rpm-smd-regulator.h \
  ../scripts/dtc/include-prefixes/dt-bindings/msm/msm-bus-ids.h \
    $(wildcard include/config/noc.h) \
  ../arch/arm64/boot/dts/qcom/pmi632.dtsi \
  ../arch/arm64/boot/dts/qcom/pm6125.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  ../scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  ../scripts/dtc/include-prefixes/dt-bindings/input/qcom,qpnp-power-on.h \
  ../arch/arm64/boot/dts/qcom/trinket-qupv3.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-pinctrl.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/pinctrl/qcom,pmic-gpio.h \
  ../arch/arm64/boot/dts/qcom/trinket-ion.dtsi \
  ../arch/arm64/boot/dts/qcom/pm6125-rpm-regulator.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-regulator.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-gdsc.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-usb.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/phy/qcom,usb3-11nm-qmp-combo.h \
  ../arch/arm64/boot/dts/qcom/trinket-camera.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-arm-smmu-trinket.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-coresight.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-vidc.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,videocc-sm6150.h \
  ../arch/arm64/boot/dts/qcom/trinket-pm.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-gpu.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-bus.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-sde-pll.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-sde.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/mdss-14nm-pll-clk.h \
  ../arch/arm64/boot/dts/qcom/msm-rdbg.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-audio.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-audio-lpass.dtsi \
  ../arch/arm64/boot/dts/qcom/trinket-thermal.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  ../arch/arm64/boot/dts/qcom/pm8008.dtsi \

arch/arm64/boot/dts/qcom/trinket.dtb: $(deps_arch/arm64/boot/dts/qcom/trinket.dtb)

$(deps_arch/arm64/boot/dts/qcom/trinket.dtb):
