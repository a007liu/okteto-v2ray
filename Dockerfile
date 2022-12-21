FROM ubuntu:16.04
ADD install.sh /opt/install.sh
RUN chmod a+x  /opt/install.sh
run apt-get update && apt-get install -y wget
ENV TZ 'Asia/Shanghai'
ENTRYPOINT ["sh", "-c", "/opt/install.sh"]
