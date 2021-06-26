$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# A/B
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

PRODUCT_PACKAGES += otapreopt_script

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom

# Soundtrigger
PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.0-core\
    android.hardware.soundtrigger@2.0

# Toybox
PRODUCT_PACKAGES += toybox_vendor

# Inherit vendor
include vendor/gm/GM8_sprout/GM8_sprout-vendor.mk
