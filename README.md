To use this repo, just add the following to device.mk
```
# MotoFm
$(call inherit-product, vendor/motorola/MotoFm/common.mk)
```

Then clone the necessary repos:

```
git clone -b 12 https://github.com/4mede/MotoFm.git vendor/motorola/MotoFm
```

Moto Signature App repo: (needed to update moto apps in Play Store)
```
git clone -b 11 https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotoSignatureApp.git -b android-15 vendor/motorola/MotoSignatureApp
```

