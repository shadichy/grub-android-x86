# Maintainer: shadichy <shadichy.dev@gmail.com>

pkgname='grub-android-prober'
pkgver='0.0.3'
pkgrel='2'
pkgdesc='GRUB Configuration for Android detection (Only works with NTFS, extFS and vFat/exFat)'
arch=('any')
license=('GPLv3')
url='https://github.com/shadichy/grub-android-x86.git'
depends=('grub' 'bash')
source=('30_android-prober')
sha512sums=(
	'b9f9d267cb4f6b943cafc894e5b77a7bbd9a2db1748715c2715a8dce72922a1737589adc4160cdad5665f3380a52e481da7189bd09c472db9294f84480ecdbd6'
)

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
}
