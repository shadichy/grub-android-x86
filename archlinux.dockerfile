FROM archlinux:latest

# Update packages
RUN yes | pacman -Syyu base-devel grub bash fakeroot

COPY . /grub-android-prober

RUN chown -hR nobody:nobody /grub-android-prober

WORKDIR /grub-android-prober

RUN su nobody -c 'makepkg -sif'

RUN mv /grub-android-prober/*.pkg.tar{.,}*
