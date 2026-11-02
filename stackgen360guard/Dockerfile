FROM alpine:3.22 AS download_binary

ARG STACKGEN360GUARD_VERSION
ARG TARGETOS
ARG TARGETARCH

RUN apk add --no-cache ca-certificates wget

WORKDIR /download

RUN set -eu; \
    archive="stackgen360guard_${STACKGEN360GUARD_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz"; \
    base_url="https://releases.stackgen.com/binaries/stackgen360guard/v${STACKGEN360GUARD_VERSION}"; \
    wget -O "$archive" "${base_url}/${archive}"; \
    wget -O checksums.txt "${base_url}/checksums.txt"; \
    awk -v file="$archive" '$2 == file { print; found = 1 } END { if (!found) exit 1 }' checksums.txt > archive.sha256; \
    sha256sum -c archive.sha256; \
    tar -xzf "$archive" stackgen360guard; \
    chmod +x stackgen360guard

FROM alpine:3.22

RUN apk add --no-cache ca-certificates && \
    addgroup -S stackgen && \
    adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

COPY --from=download_binary /download/stackgen360guard /usr/local/bin/stackgen360guard

USER stackgen
WORKDIR /home/stackgen

ENTRYPOINT ["/usr/local/bin/stackgen360guard"]
