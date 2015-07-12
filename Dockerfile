FROM ubuntu:trusty
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gamil.com>

RUN echo "deb http://mirror.leaseweb.net/ubuntu/ trusty main restricted" > /etc/apt/sources.list \
    && echo "deb http://mirror.leaseweb.net/ubuntu/ trusty-updates main restricted" >> /etc/apt/sources.list \
    && echo "deb http://mirror.leaseweb.net/ubuntu/ trusty universe" >> /etc/apt/sources.list \
    && echo "deb http://mirror.leaseweb.net/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list \
    && echo "deb http://mirror.leaseweb.net/ubuntu/ trusty-security main restricted" >> /etc/apt/sources.list \
    && echo "deb http://mirror.leaseweb.net/ubuntu/ trusty-security universe" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y build-essential software-properties-common libsqlite3-dev ruby ruby-dev \
    && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX \
    && locale-gen en_US.UTF-8 \
    && dpkg-reconfigure locales \
    && rm -rf /var/lib/apt/lists/*

COPY assets/install.sh /opt/install.sh
RUN chmod 755 /opt/install.sh
RUN /opt/install.sh

COPY assets/init.sh /opt/init.sh
RUN chmod 755 /opt/init.sh

ENTRYPOINT ["/opt/init.sh"]
CMD ["start"]

EXPOSE 1025 1080
