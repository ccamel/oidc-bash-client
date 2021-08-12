FROM alpine:3.14.1

RUN apk add --no-cache \
    bash \
    curl \
    jq \
    netcat-openbsd 

COPY oidc-client.sh /usr/local/bin/oidc-client

ENTRYPOINT [ "oidc-client" ]