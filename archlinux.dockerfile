FROM archlinux/base-devel

# Update packages
RUN yes | pacman -Syyu base-devel grub bash fakeroot

COPY . /grub-android-prober

WORKDIR /grub-android-prober

RUN makepkg -sif

RUN mv /grub-android-prober/*.pkg.tar{.,}*
