#!/bin/bash

# Kernel for Universal8895-common
rm -rf kernel/samsung/universal8895
git clone https://github.com/8890q/android_kernel_samsung_universal8895.git -b lineage-20.0 kernel/samsung/universal8895 --depth 1 --single-branch

# Common tree for Universal8895-common
rm -rf device/samsung/universal8895-common
git clone https://github.com/pallavjparikh/android_device_samsung_universal8895-common.git -b elixir-13 device/samsung/universal8895-common --depth 1

# Vendor blobs for Note 8
rm -rf vendor/samsung
git clone https://github.com/8890q/proprietary_vendor_samsung.git -b lineage-20.0 vendor/samsung --depth 1

# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/ProjectElixir-Devices/hardware_samsung hardware/samsung --depth 1 -b thirteen
mv nfc hardware/samsung

# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/roynatech2544/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy --depth 1
