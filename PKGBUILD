# Maintainer: shadichy <shadichy.dev@gmail.com>

pkgname='grub-android-prober'
pkgver='0.1.0'
pkgrel='1'
pkgdesc='GRUB Configuration for Android detection (Only works with some sort of filesystems)'
arch=('any')
license=('GPLv3')
url='https://github.com/shadichy/grub-android-x86.git'
depends=('grub' 'bash')
source=('30_android-prober' 'android-prober')
sha512sums=(
	'f7cf0cf867d72b4f1181a8b409c6dd28e92b984dd7bd8ac189a8f46791fd1dedb460a6fc237665946e718e1b739c152e6725a4ddbb8de7a36f44d619a16e8161'
	'73368cd3996e662011ace1073740737b33786b4f59af12eeb274c7dfa8a0a60832b7219080a7959ee9395583680994a8ef2ae214fecc9560f841c4d80ce747cb'
)

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "android-prober" "$pkgdir/usr/bin/30_android-prober"
}
