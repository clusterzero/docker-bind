FROM ubuntu:14.04
MAINTAINER sebastianscatularo@gmail.com
RUN apt-get update \
    && apt-get install -y bind9 dnsutils \
    && rm -rf /var/lib/apt/lists/*
ADD start /usr/local/bin/start
RUN chmod 755 /usr/local/bin/start
EXPOSE 53/udp
CMD ["/usr/local/bin/start"]
