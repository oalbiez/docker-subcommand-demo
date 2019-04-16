FROM ubuntu
MAINTAINER olivier.albiez@poloper.org

COPY start /usr/bin/start
COPY commands/ /usr/local/bin/
COPY environment /etc/environment
RUN chmod +x /usr/bin/start /usr/local/bin/*

WORKDIR /usr/src/app
VOLUME ["/usr/src/app"]

ENTRYPOINT ["/usr/bin/start"]

