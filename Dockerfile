FROM ubuntu:artful

LABEL maintainer "Marco Spoerl <ms@marcospoerl.de>"

RUN apt-get update && apt-get install -y \
  ca-certificates \
  dbus \
  libasound2 \
  libgconf-2-4 \
  libgtk2.0-0 \
  libnss3 \
  libxss1 \
  libxtst6 \
  libx11-xcb1 \
  locales \
  unzip \
  wget \
  --no-install-recommends

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /root

COPY sha256checksum .

RUN wget https://github.com/ethereum/mist/releases/download/v0.9.3/Mist-linux64-0-9-3.zip &&\
  sha256sum -c sha256checksum &&\
  unzip Mist-linux64-0-9-3.zip &&\
  mv linux-unpacked mist

WORKDIR /root/mist

EXPOSE 8545

ENTRYPOINT ["./mist"]

