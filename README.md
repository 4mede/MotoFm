To use this repo, just add the following to device.mk
```
# MotoFm
$(call inherit-product, vendor/motorola/MotoFm/common.mk)
```

Then clone the necessary repos:

```
git clone -b main https://github.com/4mede/MotoFm.git vendor/motorola/MotoFm
```

Moto Signature App repo: (needed to update moto apps in Play Store)
```
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotoSignatureApp.git -b android-15 vendor/motorola/MotoSignatureApp
```

Motorola Settings Provider repo: (this will make the application works)
```
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotorolaSettingsProvider.git -b android-15 vendor/motorola/MotorolaSettingsProvider
```

