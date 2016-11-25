#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:40023340:5e8d48657ad7a769dc53b15abe2eefd5376804f6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:36599080:604cfa2622f2d765b3356bfca31998b1d6f1d29a EMMC:/dev/block/bootdevice/by-name/recovery 5e8d48657ad7a769dc53b15abe2eefd5376804f6 40023340 604cfa2622f2d765b3356bfca31998b1d6f1d29a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
