FROM alpine AS download_binary

ARG GENIE_BETA_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O genie-beta.tar.gz \
    https://releases.stackgen.com/binaries/genie-beta/v${GENIE_BETA_VERSION}/genie_${GENIE_BETA_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf genie-beta.tar.gz && \
    mv genie-beta /tmp/genie-beta

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/genie-beta /usr/local/bin/genie-beta

RUN chmod +x /usr/local/bin/genie-beta

ENTRYPOINT ["/usr/local/bin/genie-beta"]
