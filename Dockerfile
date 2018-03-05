FROM ubuntu:xenial
MAINTAINER Akira Midorikawa <redcap97@gmail.com>

RUN apt-get update
RUN apt-get install --no-install-recommends -y g++ make pkg-config cmake git wget ca-certificates
RUN rm -rf /var/lib/apt/lists/*

ENV CLANG_VERSION 5.0.1
COPY scripts/install-clang /tmp/
RUN /tmp/install-clang

ENV GTEST_REVISION 3f0cf6b62ad1eb50d8736538363d3580dd640c3e
COPY scripts/install-gtest /tmp/
RUN /tmp/install-gtest
