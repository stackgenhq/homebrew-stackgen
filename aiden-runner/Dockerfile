FROM alpine AS download_binary

ARG AIDEN_RUNNER_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O aiden-runner.tar.gz \
    https://releases.stackgen.com/binaries/aios-remote/v${AIDEN_RUNNER_VERSION}/aiden-runner_${AIDEN_RUNNER_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf aiden-runner.tar.gz && \
    mv aiden-runner /tmp/aiden-runner

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/aiden-runner /usr/local/bin/aiden-runner

RUN chmod +x /usr/local/bin/aiden-runner

ENTRYPOINT ["/usr/local/bin/aiden-runner"]
