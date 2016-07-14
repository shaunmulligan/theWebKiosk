# Base image from: https://hub.docker.com/r/resin/raspberrypi-buildpack-deps/tags/
FROM resin/raspberrypi-buildpack-deps:jessie-20160714

# here we install apt dependencies. We also remove the apt lists in the same step,
# this reduces the size of the docker image.
RUN apt-get update && apt-get install -yq --no-install-recommends \
    wget libmtdev1 \
    libxi6 libfontconfig1 \
    libts-0.0-0 libxkbcommon-x11-0 \
    libsm6 libice6 libx11-xcb1 \
    libpangocairo-1.0-0 libnss3 \
    libgdk-pixbuf2.0-0 libnotify4 \
    libgles2-mesa-dev libraspberrypi-bin \
    libraspberrypi-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Instructions from https://www.raspberrypi.org/forums/viewtopic.php?t=146729
RUN wget https://github.com/penk/SlateKit/releases/download/baremetal/oxide-eglfs-rpi.tgz && tar xvpf oxide-eglfs-rpi.tgz && rm oxide-eglfs-rpi.tgz

RUN adduser --disabled-password --gecos '' pi
RUN usermod -a -G pi,adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev pi

ENV INITSYSTEM=on

USER pi
CMD ["ls", "-alh"]
