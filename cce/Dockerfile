FROM alpine AS download_binary

ARG CCE_VERSION
ARG TARGETOS
ARG TARGETARCH

RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

RUN URL="https://releases.stackgen.com/binaries/cce/v${CCE_VERSION}/cce_${CCE_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz" && \
    curl -fsSL -o cce.tar.gz "$URL" || { echo "Error: failed to download cce from $URL" >&2; exit 1; } && \
    tar -xzf cce.tar.gz && \
    test -f cce || { echo "Error: extracted archive does not contain cce binary" >&2; exit 1; } && \
    mv cce /tmp/cce && \
    chmod +x /tmp/cce && \
    rm -f cce.tar.gz

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates git && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/cce /usr/local/bin/cce

USER stackgen

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/cce"]
CMD ["-help"]
