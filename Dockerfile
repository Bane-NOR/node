FROM ghcr.io/bane-nor/base:latest

ARG NODE_VERSION
RUN cd && touch .profile

RUN apk add -U curl bash ca-certificates openssl ncurses coreutils python3 make gcc g++ libgcc linux-headers grep util-linux binutils findutils
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    echo "export NVM_DIR=\"$NVM_DIR\"" >> ~/.profile && \
    echo "[ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\"" >> ~/.profile && \
    . "$NVM_DIR/nvm.sh" && \
    export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release && \
    nvm_get_arch() { echo "x64-musl"; } && \
    nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    node -v && npm -v

