### MoeKernel
## Akari Azusagawa @ github-dev

properties() { '
kernel.string=MoeKernel by whyakari
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=lisa
supported.versions=12.0-15.0
supported.patchlevels=
'; }

block=boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

dump_boot;
write_boot;

block=vendor_boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

reset_ak;
split_boot;
flash_boot;
