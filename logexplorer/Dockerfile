FROM alpine AS download_binary

ARG LOGEXPLORER_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O logexplorer.tar.gz \
    https://releases.stackgen.com/binaries/logexplorer/v${LOGEXPLORER_VERSION}/grafana-logexplorer-app_${LOGEXPLORER_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf logexplorer.tar.gz && \
    mv logexplorer /tmp/logexplorer

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/logexplorer /usr/local/bin/logexplorer

RUN chmod +x /usr/local/bin/logexplorer

ENTRYPOINT ["/usr/local/bin/logexplorer"]
