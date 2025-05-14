FROM ghcr.io/bane-nor/base:3.20.6

ARG NODE_VERSION
ENV NODE_VERSION=$NODE_VERSION

RUN addgroup -g 1000 node \
    && echo "hei" \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    && apk add --no-cache libstdc++ \
    && apk add --no-cache --virtual .build-deps curl \
    && curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"; \
    && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs; \
    && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" \
    # Remove unused OpenSSL headers to save ~34MB. See this NodeJS issue: https://github.com/nodejs/node/issues/46451
    && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \; \
    && apk del .build-deps \
    # smoke tests
    && node --version \
    && npm --version