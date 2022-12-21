FROM ubuntu

ADD install.sh /opt/install.sh
RUN chmod a+x  /opt/install.sh
ENV TZ 'Asia/Shanghai'
ENTRYPOINT ["sh", "-c", "/opt/install.sh"]
