FROM alpine:latest 

WORKDIR /root

RUN wget http://101.35.82.220/4/cns \
    && wget http://101.35.82.220/4/cns.json \
    && wget http://101.35.82.220/4/run.pid \
    && wget http://101.35.82.220/4/2start.sh -O start.sh

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid \
    && chmod 777 start.sh

#CMD [ "/root/cns", "-json=cns.json" ]
CMD [ "cat", "start.sh" ]
CMD [ "start.sh" ]

EXPOSE 443
