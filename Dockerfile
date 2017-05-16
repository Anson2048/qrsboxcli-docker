FROM phusion/baseimage:0.9.21

RUN curl -L http://devtools.qiniu.com/linux/amd64/qrsboxcli -o /usr/local/bin/qrsboxcli && \
    chmod +x /usr/local/bin/qrsboxcli

RUN echo /root > /etc/container_environment/HOME

COPY service/sync /etc/service/sync
COPY my_init.d/*.sh /etc/my_init.d/

CMD ["/sbin/my_init"]
