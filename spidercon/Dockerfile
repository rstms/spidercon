FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y less vim curl gpg apt-utils sudo

COPY spideroakone.list /etc/apt/sources.list.d
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 573E3D1C51AE1B3D
RUN apt-get update -y && apt-get install -y spideroakone
COPY configure-spideroak /usr/local/bin/

ARG UID
ARG GID
ENV CONSOLE_UID $UID
ENV CONSOLE_GID $GID

RUN groupadd -g $GID console && \
  useradd -m -s /bin/bash -u $UID -g $GID console && \
  usermod -aG sudo console && \
  usermod -aG backup console

# disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY entrypoint /usr/local/bin
WORKDIR /home/console
USER console
ENTRYPOINT entrypoint
