# ubuntu 20.04/cuda
FROM nvidia/cuda:11.4.2-devel-ubuntu20.04

# set up 
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# install xrdp and lxde
RUN apt-get install -y xrdp
RUN apt-get install -y lxde

RUN cd ~ && echo lxsession -s LXDE -e LXDE > ~/.xsession
