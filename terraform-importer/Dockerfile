FROM alpine AS download_binary

ARG TERRAFORM_IMPORTER_VERSION
ARG TARGETOS
ARG TARGETARCH

# install wget
RUN apk update && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

RUN wget -O terraform-importer.tar.gz \
    https://releases.stackgen.com/binaries/v${TERRAFORM_IMPORTER_VERSION}/terraform-importer-cli_${TERRAFORM_IMPORTER_VERSION}_${TARGETOS}_${TARGETARCH}.tar.gz && \
    tar -xzf terraform-importer.tar.gz && \
    mv terraform-importer /tmp/terraform-importer

FROM alpine:latest

RUN apk update && \
    apk add --no-cache ca-certificates && \
    rm -rf /var/cache/apk/* && \
    addgroup -S stackgen && adduser -S stackgen -G stackgen -u 1000 -h /home/stackgen

USER stackgen

COPY --from=download_binary --chown=stackgen:stackgen /tmp/terraform-importer /usr/local/bin/terraform-importer

RUN chmod +x /usr/local/bin/terraform-importer

ENTRYPOINT ["/usr/local/bin/terraform-importer"]
