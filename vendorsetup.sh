#!/bin/bash

# Kernel for Universal8895-common
rm -rf kernel/samsung/universal8895
git clone https://github.com/8890q/android_kernel_samsung_universal8895.git -b lineage-21-rel kernel/samsung/universal8895 --depth 1 --single-branch

# Common tree for Universal8895-common
rm -rf device/samsung/universal8895-common
git clone https://github.com/pallavjparikh/android_device_samsung_universal8895-common.git -b elixir-14 device/samsung/universal8895-common --depth 1

# Vendor blobs for Note 8
rm -rf vendor/samsung
git clone https://github.com/8890q/proprietary_vendor_samsung.git -b lineage-21.0 vendor/samsung --depth 1

# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/8890q/android_hardware_samsung.git -b lineage-21.0 hardware/samsung
mv nfc hardware/samsung

# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
rm -rf hardware/samsung_slsi-linaro/config
rm -rf hardware/samsung_slsi-linaro/exynos
rm -rf hardware/samsung_slsi-linaro/exynos5
rm -rf hardware/samsung_slsi-linaro/graphics
rm -rf hardware/samsung_slsi-linaro/openmax

git clone https://github.com/8890q/android_device_samsung_slsi_sepolicy.git -b lineage-21 device/samsung_slsi/sepolicy
git clone https://github.com/8890q/android_hardware_samsung_slsi-linaro_config.git -b lineage-20 hardware/samsung_slsi-linaro/config
git clone https://github.com/8890q/android_hardware_samsung_slsi-linaro_exynos.git -b lineage-20 hardware/samsung_slsi-linaro/exynos
git clone https://github.com/8890q/android_hardware_samsung_slsi-linaro_exynos5.git -b lineage-20 hardware/samsung_slsi-linaro/exynos5
git clone https://github.com/8890q/android_hardware_samsung_slsi-linaro_graphics.git -b lineage-21 hardware/samsung_slsi-linaro/graphics
git clone https://github.com/8890q/android_hardware_samsung_slsi-linaro_openmax.git -b lineage-20 hardware/samsung_slsi-linaro/openmax
