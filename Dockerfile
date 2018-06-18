FROM    alpine
RUN     apk add --update python
RUN     adduser -S ist
WORKDIR /home/ist
COPY    dump.tar.gz /home/ist/dump.tar.gz
EXPOSE  8000
CMD     python -m SimpleHTTPServer
