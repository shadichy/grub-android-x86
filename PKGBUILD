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
sha512sums=( 'e8fda692a322bf1403cbb0bf05263f7ded26e1f4618a98f689efe9a2fdd24deb5d5ae94aca2e07aa58f33ca61717ab1fd4d43fe1cd13760011d8674e182b54c1' 'b3b764892d642f4efb63db4b20a8cea789896cb14f4df98f5bbc96eb5d24f1ec59dea3c1942aa145ff96092ec54a51e7cd34da755cb0a854e57cdbc99a2bd806' )

package() {
	cd "$srcdir"
	install -Dm755 "30_android-prober" "$pkgdir/etc/grub.d/30_android-prober"
	install -Dm755 "grub-android-prober" "$pkgdir/usr/bin/grub-android-prober"
}
