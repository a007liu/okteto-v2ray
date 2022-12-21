FROM alpine:latest

ADD entrypoint.sh /opt/entrypoint.sh
ADD install_caddy.sh /opt/install_caddy.sh
RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh && chmod +x /opt/install_caddy.sh

ENTRYPOINT ["sh", "-c", "opt/install_caddy.sh && /opt/entrypoint.sh"]
