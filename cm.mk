## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for cooperve
$(call inherit-product, device/samsung/amazing/full_amazing.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
$(call inherit-product, vendor/cm/config/mini.mk)

# Overrides
PRODUCT_NAME := cm_amazing
PRODUCT_DEVICE := amazing
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S6802
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_RELEASE_NAME := GalaxyAmazing
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S6802
