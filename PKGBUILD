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
sha512sums=( '67aa0e6e40d4134dfed567cc303bedcc93728c3233ca6558a8e2e4a52480e8f53a45fa8e809d3bb4d42b16f6eee4533baf9341a174a26159ad0f69f3d44452b1' 'fa473ff70c40e61ace8d3feeaeb2a8bdce499c0e2fc590e0088257e9041297b633c4c9b43e7d29a131b9158e2e8a4191ac89ef4eb33a3704cf637526afb29a5d' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
