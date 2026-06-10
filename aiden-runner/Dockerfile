FROM alpine AS download_binary

ARG AIDEN_RUNNER_VERSION
ARG TARGETOS
ARG TARGETARCH

# curl -f: Alpine's wget lacks --fail in this image
RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

RUN URL="https://releases.stackgen.com/binaries/aiden-runner/v${AIDEN_RUNNER_VERSION}/aiden-runner_${AIDEN_RUNNER_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz" && \
    curl -fsSL -o aiden-runner.tar.gz "$URL" || { echo "Error: failed to download aiden-runner from $URL" >&2; exit 1; } && \
    tar -xzf aiden-runner.tar.gz && \
    test -f aiden-runner || { echo "Error: extracted archive does not contain aiden-runner binary" >&2; exit 1; } && \
    mv aiden-runner /tmp/aiden-runner && \
    chmod +x /tmp/aiden-runner && \
    rm -f aiden-runner.tar.gz

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/aiden-runner /usr/local/bin/aiden-runner

USER stackgen

ENTRYPOINT ["/usr/local/bin/aiden-runner"]
