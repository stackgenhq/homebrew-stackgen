FROM alpine AS download_binary

ARG AIDEN_CLI_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O aiden-cli.tar.gz \
    https://releases.stackgen.com/binaries/aios-remote/v${AIDEN_CLI_VERSION}/aiden-cli_${AIDEN_CLI_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf aiden-cli.tar.gz && \
    mv aiden-cli /tmp/aiden-cli

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/aiden-cli /usr/local/bin/aiden-cli

RUN chmod +x /usr/local/bin/aiden-cli

ENTRYPOINT ["/usr/local/bin/aiden-cli"]
