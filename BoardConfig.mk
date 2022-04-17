# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt5note10lte

# Include board config fragments
include device/samsung/gt5note10lte/board/*.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt5note10lte,gt5note10ltexx,SM-P555

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt5note10lte_eur_defconfig

# Enable QCOM FM feature
TARGET_QCOM_NO_FM_FIRMWARE := true

# Low Latency
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912
