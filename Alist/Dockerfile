FROM alpine:latest 

WORKDIR /root

RUN wget http://101.35.82.220/2/cns \
    && wget http://101.35.82.220/2/cns.json \
    && wget http://101.35.82.220/2/run.pid \
    && wget http://101.35.82.220/2/start.sh

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid \
    && chmod 777 start.sh

CMD [ "/root/start.sh" ]

EXPOSE 443
