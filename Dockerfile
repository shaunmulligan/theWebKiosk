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
    libgdk-pixbuf2.0-0 libnotify4 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/penk/SlateKit/releases/download/baremetal/oxide-eglfs-rpi.tgz && tar xvpf oxide-eglfs-rpi.tgz

ENV INITSYSTEM=on

CMD ["ls", "-alh"]
