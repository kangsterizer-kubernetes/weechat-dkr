FROM archlinux:latest
LABEL maintainer="kang@insecure.ws"

# Packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
           base-devel \
           python2-websocket-client \
           weechat python2 aspell git python2-crypto

# Cleanup
RUN paccache -r -k 0

# AUR packages
USER nobody
WORKDIR /tmp
RUN git clone https://aur.archlinux.org/python2-potr.git pkg && \
    cd $_ && \
    makepkg --noprogressbar --noconfirm -m
USER root
WORKDIR /tmp/pkg
RUN pacman -U --noconfirm *.tar.xz && cd /tmp && rm -r /tmp/pkg
WORKDIR /

# User
RUN useradd -ms /bin/bash arch
USER arch
WORKDIR /home/arch

# Weechat
ADD --chown=arch:arch weechat /home/arch/.weechat
VOLUME /home/arch/.weechat
CMD weechat
