FROM debian:latest

LABEL author="Thomas Fournier" maintainer="thomas@artivain.com"

RUN useradd -m -d /home/container container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
