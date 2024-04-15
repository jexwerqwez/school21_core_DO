FROM nginx
USER root
WORKDIR /home/
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY miniserver.c /home/miniserver.c
COPY run.sh /home/run.sh
RUN apt-get update; \
	apt-get install -y gcc libfcgi-dev spawn-fcgi; \
	chmod +x run.sh; \
	useradd nginx;  \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chmod g-s /usr/bin/expiry; \
    chmod u-s /usr/bin/newgrp; \
    chmod g-s /usr/bin/chage; \
    chmod g-s /sbin/unix_chkpwd; \
    chmod u-s /bin/mount; \
    chmod g-s /usr/bin/wall; \
    chmod u-s /bin/su; \
    chmod u-s /usr/bin/passwd; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/gpasswd; \
    chmod u-s /bin/umount;

ENTRYPOINT ["sh", "./run.sh"]
