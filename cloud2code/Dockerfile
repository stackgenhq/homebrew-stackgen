FROM alpine AS download_binary

ARG CLOUD2CODE_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O cloud2code.tar.gz \
    https://releases.stackgen.com/binaries/v${CLOUD2CODE_VERSION}/cloud2code_${CLOUD2CODE_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf cloud2code.tar.gz && \
    mv cloud2code /tmp/cloud2code

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/cloud2code /usr/local/bin/cloud2code

RUN chmod +x /usr/local/bin/cloud2code

ENTRYPOINT ["/usr/local/bin/cloud2code"]
