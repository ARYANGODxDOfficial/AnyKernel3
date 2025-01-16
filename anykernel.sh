### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

properties() { '
kernel.string=MoeKernel by @whyakari
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=java
device.name2=p352
device.name3=ums512
device.name4=moto g20 
supported.versions=11-12-13-14
supported.patchlevels=2021-01 -
'; }

attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
}

block=auto
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=0;

. tools/ak3-core.sh && attributes;

dump_boot;
write_boot;
