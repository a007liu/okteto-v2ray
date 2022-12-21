FROM ubuntu

ADD install.sh /opt/install.sh
RUN chmod +X /opt/install.sh

ENTRYPOINT ["sh", "-c", "opt/install.sh"]
