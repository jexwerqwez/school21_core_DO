FROM nginx
WORKDIR /home/
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY miniserver.c /home/miniserver.c
COPY run.sh /home/run.sh
RUN apt-get update && apt-get install -y gcc libfcgi-dev spawn-fcgi && chmod +x run.sh
ENTRYPOINT ["sh", "./run.sh"]
