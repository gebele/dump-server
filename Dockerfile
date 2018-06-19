FROM    alpine
RUN     apk add --update darkhttpd
RUN     adduser -S ist
WORKDIR /home/ist
COPY    dump.tar.gz /home/ist/dump.tar.gz
EXPOSE  8080
CMD     darkhttpd ~/ --port 8080
