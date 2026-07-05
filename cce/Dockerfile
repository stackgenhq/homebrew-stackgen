FROM debian:bookworm-slim AS download_binary

ARG CCE_VERSION
ARG TARGETOS=linux
ARG TARGETARCH

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN URL="https://releases.stackgen.com/binaries/cce/v${CCE_VERSION}/cce_${CCE_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz" && \
    curl -fsSL -o cce.tar.gz "$URL" || { echo "Error: failed to download cce from $URL" >&2; exit 1; } && \
    tar -xzf cce.tar.gz && \
    test -f cce || { echo "Error: extracted archive does not contain cce binary" >&2; exit 1; } && \
    mv cce /tmp/cce && \
    chmod +x /tmp/cce && \
    rm -f cce.tar.gz

FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates git && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd --system --gid 1000 stackgen && \
    useradd --system --uid 1000 --gid stackgen --home-dir /home/stackgen --create-home stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/cce /usr/local/bin/cce

USER stackgen

WORKDIR /work

ENTRYPOINT ["/usr/local/bin/cce"]
CMD ["-help"]
