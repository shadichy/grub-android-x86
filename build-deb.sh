#!/bin/bash
# shellcheck disable=2086,2103,2164,2317

cd "$(dirname "$0")"

pkgname=$(head -1 debian/changelog | awk '{print $1}')
_ver=$(head -1 debian/changelog | grep -Eo '[0-9]+(\.[0-9]+){2,}-[0-9]+')
pkgver=$(echo "${_ver}" | awk -F - '{print $1}')
pkgrel=$(echo "${_ver}" | awk -F - '{print $2}')

# avoid command failure
exit_check() { [ "$1" = 0 ] || exit "$1"; }
trap 'exit_check $?' EXIT

# Create .orig tarball
tar -cJf ../${pkgname}_${pkgver}.orig.tar.xz .

dpkg-buildpackage -b --no-sign

# export metadata
cat <<EOF >../metadata.yml
Name: ${pkgname}
Version: ${_ver}
Variants: default
EOF
