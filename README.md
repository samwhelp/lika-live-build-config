

## Home

> [lika-live-build-config](https://github.com/samwhelp/lika-live-build-config)




## Subject

* [Project](#project)
* [Lika OS / Live System](#lika-os--live-system)
* [Boot ISO By GRUB](#boot-iso-bygrub)
* [Link](#link)




## Project

> This project `lika-live-build-config` is building skeleton.

| Link | GitHub |
| ---- | ------ |
| [lika-live-build-config](https://samwhelp.github.io/lika-live-build-config/) | [GitHub](https://github.com/samwhelp/lika-live-build-config) |

> Please using `another project as following` to start build process.


### Prototype

| Link | GitHub |
| ---- | ------ |
| [lika-live-build-config-using](https://samwhelp.github.io/lika-live-build-config-using/) | [GitHub](https://github.com/samwhelp/lika-live-build-config-using) |
| [lika-live-build-config-remix](https://samwhelp.github.io/lika-live-build-config-remix/) | [GitHub](https://github.com/samwhelp/lika-live-build-config-remix) |
| [lika-live-build-config-enhance](https://samwhelp.github.io/lika-live-build-config-enhance/) | [GitHub](https://github.com/samwhelp/lika-live-build-config-enhance) |


### Respin

| Link | GitHub |
| ---- | ------ |
| [lika-live-build-respin-xfce](https://samwhelp.github.io/lika-live-build-respin-xfce/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-xfce) |
| [lika-live-build-respin-kde](https://samwhelp.github.io/lika-live-build-respin-kde/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-kde) |
| [lika-live-build-respin-lxqt](https://samwhelp.github.io/lika-live-build-respin-lxqt/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-lxqt) |
| [lika-live-build-respin-mate](https://samwhelp.github.io/lika-live-build-respin-mate/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-mate) |
| [lika-live-build-respin-cinnamon](https://samwhelp.github.io/lika-live-build-respin-cinnamon/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-cinnamon) |
| [lika-live-build-respin-gnome](https://samwhelp.github.io/lika-live-build-respin-gnome/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-gnome) |
| [lika-live-build-respin-openbox](https://samwhelp.github.io/lika-live-build-respin-openbox/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-openbox) |
| [lika-live-build-respin-bspwm](https://samwhelp.github.io/lika-live-build-respin-bspwm/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-bspwm) |
| [lika-live-build-respin-i3](https://samwhelp.github.io/lika-live-build-respin-i3/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-i3) |
| [lika-live-build-respin-herbstluftwm](https://samwhelp.github.io/lika-live-build-respin-herbstluftwm/) | [GitHub](https://github.com/samwhelp/lika-live-build-respin-herbstluftwm) |




## Lika OS / Live System

| Account  | Value  |
| -------- | ------ |
| Username | `lika` |
| Password | `live` |

> If you want to remove password, just run

``` sh
sudo passwd -d $(whoami)
```




## Boot ISO By GRUB

> Put iso file to `/opt/iso/lika/latest/lika.iso`

> Create file `/boot/grub/custom.cfg`, the content is as follows

``` sh
menuentry "Lika OS" --class Debian {
	set iso_file="/opt/iso/lika/latest/lika.iso"
	search --set=iso_partition --no-floppy --file $iso_file
	probe --set=iso_partition_uuid --fs-uuid $iso_partition
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file

	set extra_option=""
	#set extra_option="components quiet splash"

	set locale_option=""
	#set locale_option="locales=en_US.UTF-8"
	#set locale_option="locales=zh_TW.UTF-8"
	#set locale_option="locales=zh_CN.UTF-8"
	#set locale_option="locales=zh_HK.UTF-8"
	#set locale_option="locales=ja_JP.UTF-8"
	#set locale_option="locales=ko_KR.UTF-8"

	set boot_option="${locale_option} ${extra_option}"
	linux	(loop)/live/vmlinuz boot=live buuid=${iso_partition_uuid} findiso=${iso_file} ${boot_option}
	initrd	(loop)/live/initrd.img
}
```




## Link

| Link |
| ---- |
| Kali Linux / [live-build-config](https://gitlab.com/kalilinux/build-scripts/live-build-config) |
| Kali Linux / [live-build-config-examples](https://gitlab.com/kalilinux/recipes/live-build-config-examples) |
| Kali Linux / [How to Creating A Custom Kali ISO](https://www.kali.org/docs/development/live-build-a-custom-kali-iso/) |
| [Debian Live Manual](https://live-team.pages.debian.net/live-manual/html/live-manual/index.en.html) |
