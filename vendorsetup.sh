git clone --depth=1 https://gitlab.com/nekoprjkt/aosp-clang -b 17 prebuilts/clang/host/linux-x86/clang-aosp

# Remove msm8953-k4.9 Audio HAL
rm -rf hardware/qcom-caf/msm8953/audio

# Remove msm8953-k4.9 Media HAL
rm -rf hardware/qcom-caf/msm8953/media

# Clone msm8953-k4.19 Audio HAL
if [ ! -d "hardware/qcom-caf/msm8953/audio" ]; then
    git clone https://github.com/Mi-Titanium/android_hardware_qcom_audio_mithorium -b LA.UM.9.6.4.r2-04300-89xx.QSSI13r2.0 hardware/qcom-caf/msm8953/audio
else
    echo "hardware/qcom-caf/msm8953/audio already exists, skipping clone"
fi

# Clone msm8953-k4.19 Media HAL
if [ ! -d "hardware/qcom-caf/msm8953/media" ]; then
    git clone https://github.com/Mi-Titanium/android_hardware_qcom_media_mithorium -b LA.UM.9.6.4.r2-04300-89xx.QSSI13r2.0 hardware/qcom-caf/msm8953/media
else
    echo "hardware/qcom-caf/msm8953/media already exists, skipping clone"
fi

# Clone common tree if not exists
if [ ! -d "device/xiaomi/mititanium-common" ]; then
    git clone https://github.com/KanariaAlt/device_xiaomi_mititanium-common -b 14 device/xiaomi/mititanium-common
else
    echo "device/xiaomi/mititanium-common already exists, skipping clone"
fi

# Clone device camera tree if not exists
if [ ! -d "device/xiaomi/ysl/camera" ]; then
    git clone https://github.com/KanariaAlt/device_xiaomi-msm8953_camera -b main device/xiaomi/ysl/camera
else
    echo "device/xiaomi/ysl/camera already exists, skipping clone"
fi

# Clone proprietary if not exists
if [ ! -d "vendor/xiaomi/ysl" ]; then
    git clone --depth=1 https://github.com/KanariaAlt/proprietary_vendor_xiaomi_ysl -b 14 vendor/xiaomi/ysl
else
    echo "vendor/xiaomi/ysl already exists, skipping clone"
fi

# Clone commmon proprietary if not exists
if [ ! -d "vendor/xiaomi/mititanium-common" ]; then
    git clone --depth=1 https://github.com/KanariaAlt/proprietary_vendor_xiaomi_mititanium-common -b 14 vendor/xiaomi/mititanium-common
else
    echo "vendor/xiaomi/mititanium-common already exists, skipping clone"
fi

# Clone kernel if not exists
if [ ! -d "kernel/xiaomi/msm8953" ]; then
    git clone --depth=1 https://github.com/mizuenaAlt/msm-4.19 -b ysl/master kernel/xiaomi/msm8953
else
    echo "kernel/xiaomi/msm8953 already exists, skipping clone"
fi

# Clone kernel devicetree if not exists
if [ ! -d "kernel/xiaomi/msm8953/arch/arm64/boot/dts/vendor/qcom/mi8953" ]; then
    git clone --depth=1 https://github.com/mizuenaAlt/kernel_devicetree_xiaomi-msm8953 -b 4.19 kernel/xiaomi/msm8953/arch/arm64/boot/dts/vendor/qcom/mi8953
else
    echo "kernel/xiaomi/msm8953/arch/arm64/boot/dts/vendor/qcom/mi8953 already exists, skipping clone"
fi

# Clone kernel module if not exists
if [ ! -d "kernel/xiaomi/msm8953/techpack/xiaomi-msm8953" ]; then
    git clone --depth=1 https://github.com/Mi-Titanium/techpack_xiaomi-msm8953 -b main kernel/xiaomi/msm8953/techpack/xiaomi-msm8953
else
    echo "kernel/xiaomi/msm8953/techpack/xiaomi-msm8953 already exists, skipping clone"
fi

# Clone hardware titanium_64 proprietary if not exists
if [ ! -d "hardware/titanium_64" ]; then
    git clone --depth=1 https://github.com/KanariaAlt/hardware-titanium_64 -b 13 hardware/titanium_64
else
    echo "hardware/titanium_64 already exists, skipping clone"
fi
