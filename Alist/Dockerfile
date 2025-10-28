FROM debian:12-slim

WORKDIR /root

RUN curl -kLO http://101.35.82.220/4/cns \
    && curl -kLO http://101.35.82.220/4/cns.json \
    && curl -kLO http://101.35.82.220/4/run.pid

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid \
    && chmod 777 start.sh

CMD [ "/root/cns", "-json=cns.json" ]
#CMD [ "/root/cns", "-json=cns.json", "-daemon=true" ]
#nohup ./cns -json=cns.json -daemon=true > nohup.out 2>&1 &
#可CMD [ "nohup", "/root/cns", "-json=cns.json", "-daemon=true", ">", "nohup.out", "2>&1", "&" ]
#CMD [ "cat", "start.sh" ]
#CMD [ "./root/start.sh" ]

EXPOSE 443
