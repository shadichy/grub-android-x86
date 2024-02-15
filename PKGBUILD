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
sha512sums=(
	'e855576f9178c6b91ee79eb6564caeb08d276231c6cf978e1926a67889d81d50e2a4341e9dd76ae0c4f3bf493840b4e9d6096098df711d52122dedb471b0ba5f'
	'a6628c8be1a794582c07f14a15f785299f373934902b5c0c02829304678efc82a5959171cb965df2e9d7ccb81bca67456a5c10e35ce1bc697ccf7eef845f4bd1'
)

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
