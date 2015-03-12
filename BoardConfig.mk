# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/sony/shinano/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := D6603

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
TARGET_DTB_EXTRA_FLAGS := --force-v2
TARGET_KERNEL_SOURCE := kernel/sony/msm8974
TARGET_KERNEL_CONFIG := aosp_shinano_leo_defconfig

#Reserve space for data encryption (12656259072-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688

BOARD_KERNEL_CMDLINE += coherent_pool=8M mem=1536M vmalloc=220M

PRODUCT_VENDOR_KERNEL_HEADERS += device/sony/leo/kernel-headers
