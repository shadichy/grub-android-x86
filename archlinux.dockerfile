FROM archlinux:latest

# Update packages
RUN yes | pacman -Syyu base-devel grub bash fakeroot

COPY . /grub-android-prober

# Remove expiration date of nobody
RUN chage -E -1 nobody

RUN chown -hR nobody:nobody /grub-android-prober

WORKDIR /grub-android-prober

RUN runuser -u nobody makepkg

RUN mv /grub-android-prober/*.pkg.tar* /
