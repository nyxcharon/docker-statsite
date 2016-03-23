FROM debian:8.3
RUN apt-get update && apt-get install -y \
    git \
    make \
    gcc \
    automake \
    autoconf \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /code && cd /code && git clone  https://github.com/armon/statsite.git
RUN cd /code/statsite && ./bootstrap.sh && ./configure && make && cp ./src/statsite /usr/bin/statsite
ENTRYPOINT [ "/usr/bin/statsite" ]
