FROM alpine:latest

WORKDIR /root

RUN wget http://101.35.82.220/5/cns \
    && wget http://101.35.82.220/5/cns.json \
    && wget http://101.35.82.220/5/run.pid

RUN chmod 777 cns \
    && chmod 777 cns.json \
    && chmod 777 run.pid

#CMD [ "/root/cns", "-json=cns.json" ]
#CMD [ "/root/cns", "-json=cns.json", "-daemon=true" ]
#nohup ./cns -json=cns.json -daemon=true > nohup.out 2>&1 &
CMD [ "nohup", "/root/cns", "-json=cns.json", "-daemon=true", ">", "nohup.out", "2>&1", "&" ]
#CMD [ "cat", "start.sh" ]
#CMD [ "./root/start.sh" ]

EXPOSE 9443
