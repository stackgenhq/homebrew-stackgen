FROM alpine AS download_binary

ARG STACKGEN_SLO_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O stackgen-slo.tar.gz \
    https://releases.stackgen.com/binaries/stackgen-slo/v${STACKGEN_SLO_VERSION}/stackgen-slo-app_${STACKGEN_SLO_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf stackgen-slo.tar.gz && \
    mv stackgen-slo /tmp/stackgen-slo

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/stackgen-slo /usr/local/bin/stackgen-slo

RUN chmod +x /usr/local/bin/stackgen-slo

ENTRYPOINT ["/usr/local/bin/stackgen-slo"]
