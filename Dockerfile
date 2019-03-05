FROM alpine:3.9

WORKDIR /html

ADD . /html

RUN apk add python

CMD python -m SimpleHTTPServer
