# Maintainer: shadichy <shadichy.dev@gmail.com>

pkgname='grub-android-prober'
pkgver='0.1.0'
pkgrel='1'
pkgdesc='GRUB Configuration for Android detection (Only works with some sort of filesystems)'
arch=('any')
license=('GPLv3')
url='https://github.com/shadichy/grub-android-x86.git'
depends=('grub' 'bash')
source=('30_android-prober' 'grub-android-prober')
sha512sums=( 'f0daaf98b86ace7022e62932659fa3a450fca07681f9d6c44fdb40d96d3176b908c63e0c2dbb2b8d4f990f6d0aadc32bfe1d07dd3e47b263816cd58bf5bec612' '71e33a709d4fc87d0afcec6fa79856f234199303c876b6c35a8a448fa98aeae668f7ed1c14bea3a4b9e227f817cb0b3d78abb4a703a7bef356b44e2b19d6dde2' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
