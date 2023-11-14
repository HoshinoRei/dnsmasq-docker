FROM debian:12-slim
LABEL org.opencontainers.image.source=https://github.com/HoshinoRei/dnsmasq-docker
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y dnsmasq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME /etc/dnsmasq.conf
ENTRYPOINT ["dnsmasq", "-k", "-C", "/etc/dnsmasq.conf"]
CMD ["--log-facility=-"]
