from ubuntu

copy start /usr/bin/start
copy commands/ /usr/local/bin/
copy environment /etc/environment
run chmod +x /usr/bin/start /usr/local/bin/*

workdir /usr/src/app
volume ["/usr/src/app"]

entrypoint ["/usr/bin/start"]

