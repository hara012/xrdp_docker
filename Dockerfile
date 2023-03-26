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

# add user
ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

# set entry point
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
