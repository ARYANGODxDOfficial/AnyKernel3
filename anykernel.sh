### MoeKernel - Xiaomi Redmi Note 8
## Akari Azusagawa @ github-dev

properties() { '
kernel.string=MoeKernel by whyakari
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ginkgo
device.name2=willow
supported.versions=14.0-15.0
supported.patchlevels=
'; }

attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
}

block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh && attributes;

dump_boot;
write_boot;
