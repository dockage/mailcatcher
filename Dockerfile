FROM dockage/alpine:3.9

ENV MAILCATCHER_VERSION=0.7.1

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="mailcatcher" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface." \
    org.label-schema.version="${MAILCATCHER_VERSION}" \
    org.label-schema.license="MIT"

RUN apk --no-cache --update add g++ make ruby ruby-dev ruby-json ruby-etc sqlite-dev \
    && gem install mailcatcher:${MAILCATCHER_VERSION} --no-ri --no-rdoc \
    && apk del g++ make

EXPOSE 1025 1080

COPY assets/root/ /

ENTRYPOINT ["entrypoint"]
CMD ["mailcatcher", "-f", "--ip", "0.0.0.0"]
