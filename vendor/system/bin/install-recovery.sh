#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9398289 9a91c5e7f527910ed0084fb9fbecb71a7448b326 6281233 6d87c729f16c283e7bd1ebc49c56b2b30f4612dd
fi
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:9398289:9a91c5e7f527910ed0084fb9fbecb71a7448b326; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:6281233:6d87c729f16c283e7bd1ebc49c56b2b30f4612dd EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 9a91c5e7f527910ed0084fb9fbecb71a7448b326 9398289 6d87c729f16c283e7bd1ebc49c56b2b30f4612dd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
