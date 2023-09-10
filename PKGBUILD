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
sha512sums=( '6dc9155b81171e06c8b1f6fed9a87585fd32a120cc2a5208edc150901bb6d65630bbd5a13da39d017089cec96cdba77c2548599e04510ffaf2f3e94eecfed4e6' 'de9a056b9bb6d5921664068018d19635875570895d8762c56be7ed10516e71ebe79113ebaa3703c71211e9470d4f2af647f612a26a6d7e03c39d205434ed6863' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
