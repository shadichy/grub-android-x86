# grub-android-x86

This is GRUB Configuration for Android on PC detection for Linux

Works with Android x86, not tested with ARM ROM like PrimeOS, LineageOS,...

## Configuration

These are configurations of grub-android-prober in `/etc/defaults/grub`

Default values are in `30_android-prober`

### GRUB_ANDROID_SUPPORTED_FS

Specify which filesystems contains Android or the ones this program will try to search for Android on
> Note: by default, Android initramfs don't support btrfs and some other filesystems

```sh
GRUB_ANDROID_SUPPORTED_FS="ext2 ext3 ext4 vfat exfat ntfs"
```

### GRUB_ANDROID_EXCLUDE

Specify which paths will be excluded during search
> Note: path must start with a slash, and be separated by ","  (comma) ending slashes are not needed

```sh
GRUB_ANDROID_EXCLUDE="/bin,/boot/efi,/dev,/lib,/lib64,/proc,/run,/sbin,/sys,/tmp"
```

### GRUB_ANDROID_SEARCH

Specify which files/folders will be search for/detected

```sh
GRUB_ANDROID_SEARCH="system system.img system.sfs"
```

### GRUB_ANDROID_SEARCH_DEPTH

Specify max recursive directory search level

```sh
GRUB_ANDROID_SEARCH_DEPTH=5
```

## Install

### Arch Linux

```sh
yay -S grub-android-x86
```

Or with `paru`

```sh
paru -S grub-android-x86
```

Alternatively, you can use any aur helper to install the package

### Quick install

Make sure you have su permission (`sudo` or `doas`)

```sh
wget -O /etc/grub.d/30_android-prober https://github.com/shadichy/grub-android-x86/raw/master/30_android-prober
```

Or with `curl`

```sh
curl -o /etc/grub.d/30_android-prober https://github.com/shadichy/grub-android-x86/raw/master/30_android-prober
```

## Build

First clone the repository

```sh
git clone https://github.com/shadichy/grub-android-x86
cd ./grub-android-x86
```

### Arch Linux

```sh
makepkg -si
```

### Debian

```sh
dpkg-buildpackage
```
