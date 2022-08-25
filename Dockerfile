# ubuntu 20.04/cuda
FROM nvidia/cuda:11.4.2-devel-ubuntu20.04

# set up 
RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# install xrdp and lxde
RUN apt upgrade -y
RUN apt install -y xrdp
RUN apt install -y lxde

RUN cd ~ && echo lxsession -s LXDE -e LXDE > ~/.xsession
