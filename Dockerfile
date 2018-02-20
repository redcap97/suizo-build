FROM gcc:7.3
MAINTAINER Akira Midorikawa <redcap97@gmail.com>

ENV CLANG_VERSION  5.0.1
ENV GTEST_REVISION 3f0cf6b62ad1eb50d8736538363d3580dd640c3e

RUN apt-get update
RUN apt-get install -y pkg-config wget make cmake

COPY scripts/install-clang /tmp/
RUN /tmp/install-clang

COPY scripts/install-gtest /tmp/
RUN /tmp/install-gtest
