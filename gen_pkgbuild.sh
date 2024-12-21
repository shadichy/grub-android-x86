#!/bin/bash

sha512_hash() { sha512sum "$1" | awk '{print $1}'; }

sed -ri "s/^sha512sums=(.+)$/sha512sums=(	'$(sha512_hash 30_android-prober)'	'$(sha512_hash grub-android-prober)' )/g" PKGBUILD

makepkg --printsrcinfo >.SRCINFO
