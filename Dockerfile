FROM archlinux:latest
LABEL maintainer="kang@insecure.ws"
# Packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm weechat python2 perl aspell
# Cleanup
RUN paccache -r
# User
RUN useradd -ms /bin/bash arch
USER arch
WORKDIR /home/arch
ADD --chown=arch:arch weechat /home/arch/.weechat
VOLUME /home/arch/.weechat
CMD weechat
