#tools flash gsi simple
#saya akan memudahkan dan mempercepat dalam melakukan uji gsi
echo sudah siap?
sleep 0.5 
adb devices
adb reboot bootloader
fastboot devices
fastboot --disable -verity --disable -verification flash vbmeta vbmeta.img
fastboot --disable -verity --disable -verification flash vbmeta_system vbmeta_system.img
fastboot reboot fastboot
fastboot getvar all
sleep 0.9
fastboot erase system
fastboot flash system system.img
fastboot -w
fastboot reboot recovery
clear
echo wipe data lalu reboot
