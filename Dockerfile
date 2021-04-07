FROM debian:stable-20210329
LABEL Maintainer 'Jeroen Slot'

ENV TZ Europe/Amsterdam

RUN apt-get update \
    && apt-get install -y ser2net \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 2000

#CMD /usr/sbin/ser2net -c /etc/ser2net.conf -P /run/ser2net.pid

ENTRYPOINT service ser2net start && tail -f /dev/null