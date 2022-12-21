FROM Ubuntu

ADD entrypoint.sh /opt/entrypoint.sh
ADD install.sh /opt/install.sh
RUN apt-get install --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x  chmod +x /opt/install.sh

ENTRYPOINT ["sh", "-c", "opt/install.sh"]
