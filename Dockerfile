FROM ubuntu:14.04

RUN \
  apt-get update -yq && \
  apt-get install -yq \
    build-essential \
    git \
    libsqlite3-dev \
    libprotobuf-dev \
    protobuf-compiler

RUN \
  git clone https://github.com/mapbox/tippecanoe.git && \
  cd tippecanoe && \
  make && \
  make install
