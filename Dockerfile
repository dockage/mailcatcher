FROM dockage/alpine:3.18.6

ENV MAILCATCHER_VERSION=0.9.0

RUN apk --no-cache --update add build-base ruby ruby-dev ruby-json ruby-etc sqlite-dev gcompat \
    && [ "$(uname -m)" != "aarch64" ] || gem install sqlite3 --version="~> 1.3" --no-document --platform ruby \
    && gem install mailcatcher:${MAILCATCHER_VERSION} --no-document \
    && apk del --rdepends --purge build-base

EXPOSE 1025 1080

COPY assets/root/ /

ENTRYPOINT ["entrypoint"]
CMD ["mailcatcher", "-f", "--ip", "0.0.0.0"]
