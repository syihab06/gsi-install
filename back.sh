adb devices
adb reboot bootloader
fastboot --disable -verity flash vbmeta vbmeta.img
fastboot --disable -verification flash vbmeta_system vbmeta_system.img
fastboot erase system
fastboot flash system system.img
fastboot -w
fastboot reboot recovery
clear
echo wipe data lalu reboot
