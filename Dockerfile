FROM ubuntu:latest
ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install \
    tzdata \
    git-all \
    vim \
    htop
RUN bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
WORKDIR /ROOT/
