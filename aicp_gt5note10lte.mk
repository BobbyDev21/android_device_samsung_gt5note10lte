# Inherit from common
$(call inherit-product, device/samsung/gte-common/aicp.mk)

$(call inherit-product, device/samsung/gt5note10lte/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt5note10lte
PRODUCT_NAME := aicp_gt5note10lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P555
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_GMS_CLIENTID_BASE := android-samsung
