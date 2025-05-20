# Flags
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/motorola/MotoFm/framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE += vendor/motorola/MotoFm/manifest.xml

PRODUCT_COPY_FILES += \
    vendor/motorola/MotoFm/prebuilt/init/init.qti.fm.sh:$(TARGET_COPY_OUT_VENDOR)/etc/init.qti.fm.sh \
    vendor/motorola/MotoFm/prebuilt/init/init.qti.fm.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qti.fm.rc \

# Moto Signature App
$(call inherit-product, vendor/motorola/MotoSignatureApp/motosignatureapp.mk)

# Packages
PRODUCT_PACKAGES += \
    libqcomfm_jni \
    qcom.fmradio \
    motorola.hardware.fmradio@1.0 \
    motorola.hardware.fmradio@1.0-service \
    FMRadioService \
    FMPlayer
    
PRODUCT_BOOT_JARS += qcom.fmradio
  
# Permissions
PRODUCT_COPY_FILES += \
    vendor/motorola/MotoFm/prebuilt/permissions/com.motorola.software.fmradioservice.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.motorola.software.fmradioservice.xml \
        vendor/motorola/MotoFm/prebuilt/permissions/privapp-permissions-com.motorola.fmplayer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.motorola.fmplayer.xml

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/motorola/MotoFm/sepolicy/vendor

# SOONG NAMESPACES
PRODUCT_SOONG_NAMESPACES += \
    vendor/motorola/MotoFm \
    vendor/qcom/opensource/commonsys/fm






