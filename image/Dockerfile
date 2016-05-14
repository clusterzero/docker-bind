FROM alpine:3.3
MAINTAINER sebastianscatularo@gmail.com

ENV FORWARDERS 8.8.8.8; 8.8.8.4;

VOLUME ["/var/named/master/zones"]

COPY etc/bind-conf /etc/bind-conf

RUN apk --no-cache --no-progress add bind gettext
ADD bin/entrypoint /bin/entrypoint
RUN chmod +x /bin/entrypoint

ENTRYPOINT ["/bin/entrypoint"]
CMD ["/usr/sbin/named", "-u", "named", "-g"]
