FROM ubuntu:latest
ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install \
    tzdata \
    git-all \
    vim \
    htop
WORKDIR /ROOT/
