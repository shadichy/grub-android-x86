# Maintainer: shadichy <shadichy.dev@gmail.com>

pkgname='grub-android-prober-git'
pkgver='0.1.3'
pkgrel='1'
pkgdesc='GRUB Configuration for Android detection (Only works with some sort of filesystems)'
arch=('any')
license=('GPLv3')
url='https://github.com/shadichy/grub-android-x86.git'
depends=('grub' 'bash')
provides=('grub-android-prober')
conflicts=('grub-android-prober')
source=('30_android-prober' 'grub-android-prober')
sha512sums=(	'90110810a786d15c05777c6e34ef2c19abf03d6e46ed2fc35e06a2ba4e539d4295651446f99dc98bc52693134495d76a6d0be010a9de911e52f74921b1241772'	'33e9657fb550e24e161dceeacce30a462ee716a4adf80e523d85ab706625041b6c0ce7a2eb0e0523b2dcf5799fb33e9d126d43ce8ea4d95a237225be3fa0f95e' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
