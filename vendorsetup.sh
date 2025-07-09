git clone --depth=1 https://gitlab.com/nekoprjkt/aosp-clang -b 17 prebuilts/clang/host/linux-x86/clang-aosp

# Clone common tree if not exists
if [ ! -d "device/xiaomi/mititanium-common" ]; then
    git clone https://github.com/KanariaAlt/device_xiaomi_mititanium-common -b 13 device/xiaomi/mititanium-common
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
    git clone --depth=1 https://github.com/KanariaAlt/proprietary_vendor_xiaomi_ysl -b 13 vendor/xiaomi/ysl
else
    echo "vendor/xiaomi/ysl already exists, skipping clone"
fi

# Clone commmon proprietary if not exists
if [ ! -d "vendor/xiaomi/mititanium-common" ]; then
    git clone --depth=1 https://github.com/KanariaAlt/proprietary_vendor_xiaomi_mititanium-common -b 13 vendor/xiaomi/mititanium-common
else
    echo "vendor/xiaomi/mititanium-common already exists, skipping clone"
fi

# Clone commmon proprietary if not exists
if [ ! -d "hardware/titanium_64" ]; then
    git clone --depth=1 https://github.com/KanariaAlt/proprietary_vendor_xiaomi_mititanium-common -b 13 hardware/titanium_64
else
    echo "hardware/titanium_64 already exists, skipping clone"
fi