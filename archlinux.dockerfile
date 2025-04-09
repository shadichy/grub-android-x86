FROM archlinux:latest

# Update packages
RUN yes | pacman -Syyu base-devel grub bash fakeroot

COPY . /grub-android-prober
WORKDIR /grub-android-prober

# Update build files
RUN bash /grub-android-prober/gen_pkgbuild.sh

# Remove expiration date of nobody
RUN chage -E -1 nobody

RUN chown -hR nobody:nobody /grub-android-prober

RUN runuser -u nobody makepkg

RUN mv /grub-android-prober/*.pkg.tar* /
