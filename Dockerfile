FROM ubuntu:latest
ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install \
    tzdata \
    git-all \
    vim \
    htop \
    wget
RUN mkdir -p ~/.vim/pack/kite/start/kite && \
    git clone https://github.com/kiteco/vim-plugin.git ~/.vim/pack/kite/start/kite/
WORKDIR /root/
