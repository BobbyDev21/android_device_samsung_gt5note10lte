#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt5note10lte/gt5note10lte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt5note10lte

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    libldacBT_bco

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/A05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/B05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/C05QF_sr544_module_info.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/_hals.conf

# Permissions

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt5note10lte/overlay
