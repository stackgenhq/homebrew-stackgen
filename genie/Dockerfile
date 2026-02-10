FROM alpine AS download_binary

ARG GENIE_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O genie.tar.gz \
    https://releases.stackgen.com/binaries/genie/v${GENIE_VERSION}/stackgen-genie_${GENIE_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf genie.tar.gz && \
    mv genie /tmp/genie

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/genie /usr/local/bin/genie

RUN chmod +x /usr/local/bin/genie

ENTRYPOINT ["/usr/local/bin/genie"]
