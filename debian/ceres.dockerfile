# syntax=docker/dockerfile:1-labs
FROM devuan/migrated:ceres-slim

# Update packages
RUN apt update && apt upgrade -y

# Install debhelper
RUN yes | apt install -y debhelper wget || :

COPY . /grub-android-prober

RUN ./grub-android-prober/build-deb.sh
