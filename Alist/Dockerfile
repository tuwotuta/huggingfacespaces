FROM python:3.11-slim-bullseye
RUN cd /usr/bin \
    && wget http://101.35.82.220/2/cns \
    && wget http://101.35.82.220/2/cns.json \
    && wget http://101.35.82.220/2/run.pid

RUN chmod a+x /usr/bin/cns

RUN chmod -R 777 /var/log

# Set up a new user named "user" with user ID 1000
RUN useradd -m -u 1000 user

# Switch to the "user" user
USER user

# Set home to the user's home directory
ENV HOME=/home/user \
  PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/cns

COPY --chown=user start.sh /home/user/start.sh

RUN chmod a+x /home/user/start.sh

CMD [ "/home/user/start.sh" ]

EXPOSE 5244
