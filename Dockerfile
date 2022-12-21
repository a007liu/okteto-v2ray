FROM ubuntu

ADD install_caddy.sh /opt/install.sh
RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/install.sh

ENTRYPOINT ["sh", "-c", "opt/install.sh"]
