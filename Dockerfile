FROM ubuntu

ADD install.sh /opt/install.sh


ENTRYPOINT ["sh", "-c", "opt/install.sh"]
