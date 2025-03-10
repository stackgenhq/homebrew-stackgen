FROM alpine AS download_binary

ARG STACKGEN_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O stackgen.tar.gz \
    https://releases.stackgen.com/binaries/v${STACKGEN_VERSION}/appcd_${STACKGEN_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf stackgen.tar.gz && \
    mv stackgen /tmp/stackgen

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/stackgen /usr/local/bin/stackgen

RUN chmod +x /usr/local/bin/stackgen

ENTRYPOINT ["/usr/local/bin/stackgen"]
