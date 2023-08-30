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
sha512sums=( '6108a8efc766a68aa68e02e3e6910965df25fa589024e4416fa941db51faf9ab7f2ad8974eb336fc9228c8b5ae1e28504417f7f59e78f0761f0a2d5b6830d41e' '15ccc97cf81647092cbbb448445f008199f131d2e30e722cf589eb07fb0fb7cd3617bab7335adfe64a12fd07be49b3a2299e58a4b80e2ec75a1c8cd35dafdb09' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
