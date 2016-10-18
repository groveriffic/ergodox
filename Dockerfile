# Kiibohd Controller build environment
# Based on https://github.com/kiibohd/controller/wiki/Linux-Setup

# Using debian for a slightly lighter image
FROM debian:jessie

RUN apt-get update && apt-get install -y \
  avr-libc \
  binutils-arm-none-eabi \
  binutils-avr \
  cmake \
  ctags \
  dfu-util \
  gcc-arm-none-eabi \
  gcc-avr \
  git \
  libusb-dev \
  make \
  newlib-arm-none.eabi \
  python3 \
  ruby \
  ruby-dev

RUN gem install serialport

RUN git clone https://github.com/kiibohd/controller.git

RUN cd controller/Keyboards && ./ergodox.bash
